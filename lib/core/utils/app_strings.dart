import 'package:flutter/material.dart' show immutable;

@immutable
class AppStrings {
  static const String appName = 'الأمانه';
  static const String noRouteFound = 'No Route Found';

  /// login page
  static const String userNameHint = 'اسم المستخدم';
  static const String passwordHint = '***********';
  static const String userNameValidation = 'اسم المستخدم غير صالح';
  static const String passwordValidation = 'كلمه السر غير صالحه';
  static const String rememberMe = 'تذكرني';
  static const String forgotPassword = 'إعاده كلمه السر';
  static const String login = 'تسجيل الدخول';
  static const String reference = 'دليل ارشادي';
  static const String companies = 'تأهيل الشركات';
  static const String kfou = 'منصه كفو';
  static const String techSupport = 'الدعم الفني';

  /// shared preferences
  static const String tokenKey = 'TOKEN_KEY';
  static const String currentUserKey = 'CURRENT_USER_KEY';

  /// headers
  static const String accept = 'Accept';
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String authorization = 'Authorization';
  static const String bearer = 'Bearer';

  /// error messages
  static const String networkErrorMessage = 'No Internet Connection';
  static const String unAuthErrorMessage = 'Your Session End, Login Again';
  static const String unknownErrorMessage =
      'Something went wrong\nplease try again later';
  static const String inCorrectInputsErrorMessage =
      'Email or Password not correct';
  static const String notFoundErrorMessage = 'The Required Data Not Found';
}
