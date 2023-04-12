import 'dart:io';

import 'package:dio/dio.dart';
import 'package:amana_task/core/error/exceptions.dart';

AppException throwAppException(exception) {
  if (exception is SocketException) {
    return NetworkException();
  } else if (exception is DioError) {
    return _getExceptionFromDioError(exception);
  } else {
    return UnKnownException();
  }
}

AppException _getExceptionFromDioError(DioError exception) {
  switch (exception.response?.statusCode) {
    case HttpStatus.unauthorized:
      return UnAuthException();
    case HttpStatus.internalServerError:
      return ServerException();
    case HttpStatus.notFound:
      return NotFoundException();
    case HttpStatus.networkConnectTimeoutError:
      return NetworkException();
    default:
      return UnKnownException();
  }
}
