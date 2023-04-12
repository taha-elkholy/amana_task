import 'package:amana_task/core/error/app_failure.dart';
import 'package:amana_task/core/usecase/usecase.dart';
import 'package:amana_task/features/auth/domain/entities/user.dart';
import 'package:amana_task/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase implements UseCase<User, LoginParam> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<AppFailure, User>> call(LoginParam param) {
    return _repository.login(loginParam: param);
  }
}

class LoginParam extends Equatable {
  final String username;
  final String password;

  const LoginParam({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [username, password];
}
