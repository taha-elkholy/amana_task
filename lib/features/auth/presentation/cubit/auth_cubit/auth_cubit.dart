import 'package:amana_task/features/auth/domain/usecases/get_current_user_use_case.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:amana_task/core/utils/app_strings.dart';
import 'package:amana_task/features/auth/domain/entities/user.dart';
import 'package:amana_task/features/auth/domain/usecases/login_use_case.dart';
import 'package:amana_task/features/auth/presentation/cubit/auth_cubit/auth_states.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthCubit extends Cubit<AuthStates> {
  AuthCubit(
    this._loginUseCase,
    this._getCurrentUserUseCase,
  ) : super(const AuthStates.initial());

  final LoginUseCase _loginUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;

  Future<void> login({required LoginParam loginParam}) async {
    emit(const AuthStates.loading());
    final result = await _loginUseCase(loginParam);
    emit(
      result.fold(
        (failure) => AuthStates.error(
          errorMessage: failure.errorMessage,
        ),
        (user) => AuthStates.loaded(user: user),
      ),
    );
  }

  String? validateEmail({String? email}) {
    if (email == null || email.isEmpty || !EmailValidator.validate(email)) {
      return AppStrings.userNameValidation;
    }
    return null;
  }

  String? validatePassword({String? password}) {
    if (password == null || password.isEmpty || password.length < 6) {
      return AppStrings.passwordValidation;
    }
    return null;
  }

  User? get currentUser => _getCurrentUserUseCase();
}
