import 'package:amana_task/core/api/end_points.dart';
import 'package:amana_task/features/auth/data/models/login/login_model.dart';
import 'package:amana_task/features/auth/data/models/user/user_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'auth_api_service.g.dart';

@singleton
@RestApi()
abstract class AuthApiService {
  @factoryMethod
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST(EndPoints.login)
  Future<UserModel> login({@Body() required LoginModel loginModel});
}
