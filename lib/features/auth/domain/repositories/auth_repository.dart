import 'package:amana_task/core/error/app_failure.dart';
import 'package:amana_task/features/auth/domain/entities/user.dart';
import 'package:amana_task/features/auth/domain/usecases/login_use_case.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<AppFailure, User>> login({required LoginParam loginParam});

  User? getCurrentUser();
}
