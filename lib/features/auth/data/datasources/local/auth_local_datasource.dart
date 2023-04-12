import 'dart:convert';

import 'package:amana_task/core/utils/app_strings.dart';
import 'package:amana_task/features/auth/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDatasource {
  Future<bool> saveCurrentUser({required UserModel currentUser});

  UserModel? getCurrentUser();
}

@Singleton(as: AuthLocalDatasource)
class AuthLocalDatasourceImpl extends AuthLocalDatasource {
  final SharedPreferences _preferences;

  AuthLocalDatasourceImpl(this._preferences);

  @override
  UserModel? getCurrentUser() {
    final userString = _preferences.getString(AppStrings.currentUserKey);
    if (userString != null) {
      final jsonUser = json.decode(userString);
      return UserModel.fromJson(jsonUser);
    }
    return null;
  }

  @override
  Future<bool> saveCurrentUser({required UserModel currentUser}) async {
    final userString = currentUser;
    return await _preferences.setString(
        AppStrings.currentUserKey, json.encode(userString));
  }
}
