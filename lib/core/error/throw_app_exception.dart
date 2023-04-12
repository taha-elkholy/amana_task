import 'dart:io';

import 'package:amana_task/core/error/app_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

AppException throwAppException(exception) {
  if (exception is SocketException) {
    return const AppException.network();
  } else if (exception is DioError) {
    return _mapDioErrorToAppException(exception);
  } else {
    return const AppException.unknown();
  }
}

AppException _mapDioErrorToAppException(DioError dioError) {
  String? errorMessage;
  try {
    final data = dioError.response?.data;
    errorMessage = data["error"];
  } catch (e) {
    debugPrint(e.toString());
  }
  switch (dioError.response?.statusCode) {
    case HttpStatus.unauthorized:
      return AppException.unAuth(errorMessage: errorMessage);
    case HttpStatus.notFound:
      return const AppException.notFound();
    case HttpStatus.networkConnectTimeoutError:
      return const AppException.network();
    default:
      return const AppException.unknown();
  }
}
