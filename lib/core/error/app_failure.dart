import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const factory AppFailure.network({required String errorMessage}) =
      AppNetworkFailure;

  const factory AppFailure.unAuth({required String errorMessage}) =
      AppUnUthFailure;

  const factory AppFailure.notFound({required String errorMessage}) =
      AppNotFoundFailure;

  const factory AppFailure.unknown({required String errorMessage}) =
      AppUnKnownFailure;
}
