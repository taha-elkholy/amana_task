import 'package:amana_task/features/auth/data/models/login/login_model.dart';
import 'package:amana_task/features/auth/domain/usecases/login_use_case.dart';

extension LoginMapper on LoginParam {
  LoginModel get toModel => LoginModel(
        username: username,
        password: password,
      );
}
