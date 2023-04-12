import 'dart:io';

import 'package:amana_task/config/di/injectable.dart';
import 'package:amana_task/core/api/end_points.dart';
import 'package:amana_task/core/error/exceptions.dart';
import 'package:amana_task/core/error/throw_app_exception.dart';
import 'package:amana_task/core/network/network_info.dart';
import 'package:amana_task/core/utils/app_strings.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppDioInject {
  Dio get dio {
    Dio dio = Dio();
    dio.interceptors.add(AppInterceptor());
    return dio;
  }
}

class AppInterceptor extends Interceptor {
  String? get token => _getToken();

  String? _getToken() {
    final token = getIt<SharedPreferences>().getString(AppStrings.tokenKey);
    return token;
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connection = await NetworkInfo().isConnected;

    debugPrint('AppInterceptor=> token:$token');
    debugPrint('AppInterceptor=> request path is:${options.path}');

    if (connection) {
      options.baseUrl = EndPoints.baseUrl;
      options.sendTimeout = const Duration(seconds: 60);
      options.connectTimeout = const Duration(seconds: 60);
      options.contentType = AppStrings.applicationJson;
      options.receiveTimeout = const Duration(seconds: 60);
      options.responseType = ResponseType.json;
      options.receiveDataWhenStatusError = true;
      options.followRedirects = false;
      options.validateStatus = (status) {
        return status! < 500;
      };

      options.headers.addAll(
        {
          AppStrings.accept: AppStrings.applicationJson,
          AppStrings.authorization: '${AppStrings.bearer} $token'
        },
      );

      handler.next(options);
    } else {
      handler.reject(
        DioError(
          requestOptions: options,
          type: DioErrorType.cancel,
          response: Response(
            requestOptions: options,
            statusCode: HttpStatus.networkConnectTimeoutError,
          ),
        ),
      );
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint('AppInterceptor=> Dio Error Message is:${err.message}');
    if (err.error is SocketException) {
      debugPrint('AppInterceptor=>  socket Exception');
    }

    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('AppInterceptor=> response code is:${response.statusCode}');
    debugPrint('AppInterceptor=> response data is:${response.data}');
    switch (response.statusCode) {
      case HttpStatus.unauthorized:

        handler.reject(DioError(
          requestOptions: response.requestOptions,
          type: DioErrorType.badCertificate,
          response: Response(
            requestOptions: response.requestOptions,
            statusCode: HttpStatus.unauthorized,
          ),
          error: response.data["error"] as Map<String ,dynamic>,
        ));
        break;
      case HttpStatus.ok:
      default:
        handler.next(response);
        break;
    }
  }
}
