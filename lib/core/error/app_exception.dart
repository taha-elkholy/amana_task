import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  const factory AppException.network({String? errorMessage}) =
      AppNetworkException;

  const factory AppException.unAuth({String? errorMessage}) = AppUnUthException;

  const factory AppException.notFound({String? errorMessage}) =
      AppNotFoundException;

  const factory AppException.unknown({String? errorMessage}) =
      AppUnKnownException;
}
