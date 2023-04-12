import 'package:amana_task/core/error/app_failure.dart';
import 'package:amana_task/features/auth/data/mappers/user_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:amana_task/core/error/exceptions.dart';
import 'package:amana_task/core/error/return_app_failure.dart';
import 'package:amana_task/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:amana_task/features/auth/data/datasources/remote/auth_datasource.dart';
import 'package:amana_task/features/auth/data/mappers/login_mapper.dart';
import 'package:amana_task/features/auth/domain/entities/user.dart';
import 'package:amana_task/features/auth/domain/repositories/auth_repository.dart';
import 'package:amana_task/features/auth/domain/usecases/login_use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _authRemoteDatasource;
  final AuthLocalDatasource _authLocalDatasource;

  AuthRepositoryImpl(this._authRemoteDatasource, this._authLocalDatasource);

  @override
  Future<Either<AppFailure, User>> login(
      {required LoginParam loginParam}) async {
    try {
      final userModel =
          await _authRemoteDatasource.login(loginModel: loginParam.toModel);

      await _authLocalDatasource.saveCurrentUser(
        currentUser: userModel,
      );

      return right(userModel.user.fromModel);
    } on AppException catch (appException) {
      return left(returnAppFailure(appException));
    }
  }

  @override
  User? getCurrentUser() {
    final cachedCurrentUser = _authLocalDatasource.getCurrentUser();
    if (cachedCurrentUser != null) {
      return cachedCurrentUser.user.fromModel;
    }
    return null;
  }
}
