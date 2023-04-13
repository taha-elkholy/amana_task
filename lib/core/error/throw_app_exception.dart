import 'dart:io';

import 'package:amana_task/core/error/app_exception.dart';
import 'package:dio/dio.dart';

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
  switch (dioError.response?.statusCode) {
    case HttpStatus.unauthorized:
      return const AppException.unAuth();
    case HttpStatus.notFound:
      return const AppException.notFound();
    case HttpStatus.networkConnectTimeoutError:
      return const AppException.network();
    default:
      return const AppException.unknown();
  }
}
