import 'package:amana_task/core/error/app_exception.dart';
import 'package:amana_task/core/error/app_failure.dart';
import 'package:amana_task/core/utils/app_strings.dart';

AppFailure returnAppFailure(AppException exception) {
  return exception.maybeWhen(
    network: (errorMessage) => AppFailure.network(
        errorMessage: errorMessage ?? AppStrings.networkErrorMessage),
    unAuth: (errorMessage) => AppFailure.unAuth(
        errorMessage: errorMessage ?? AppStrings.unAuthErrorMessage),
    notFound: (errorMessage) => AppFailure.notFound(
        errorMessage: errorMessage ?? AppStrings.notFoundErrorMessage),
    orElse: () =>
        const AppFailure.unknown(errorMessage: AppStrings.unknownErrorMessage),
  );
}
