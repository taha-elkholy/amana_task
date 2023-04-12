import 'package:amana_task/core/error/app_failure.dart';
import 'package:amana_task/core/error/exceptions.dart';
import 'package:amana_task/core/utils/app_strings.dart';

AppFailure returnAppFailure(appException) {
  switch (appException) {
    case NetworkException:
      return const NetworkFailure(AppStrings.networkErrorMessage);
    case UnAuthException:
      return const UnAuthFailure(AppStrings.unAuthErrorMessage);
    case IncorrectInputException:
      return const IncorrectInputFailure(
          AppStrings.inCorrectInputsErrorMessage);
    case NotFoundException:
      return const NotFoundFailure(AppStrings.notFoundErrorMessage);
    case UnKnownException:
    case ServerException:
    default:
      return const UnKnownFailure(AppStrings.unknownErrorMessage);
  }
}
