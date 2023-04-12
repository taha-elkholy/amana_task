import 'package:amana_task/core/error/throw_app_exception.dart';
import 'package:amana_task/features/auth/data/datasources/remote/auth_api_service.dart';
import 'package:amana_task/features/auth/data/models/login/login_model.dart';
import 'package:amana_task/features/auth/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDatasource {
  Future<UserModel> login({required LoginModel loginModel});
}

@Injectable(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl extends AuthRemoteDatasource {
  final AuthApiService _authApiService;

  AuthRemoteDatasourceImpl(this._authApiService);

  @override
  Future<UserModel> login({required LoginModel loginModel}) async {
    try {
      return await _authApiService.login(loginModel: loginModel);
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
