import 'package:equatable/equatable.dart';

abstract class AppFailure extends Equatable {
  final String errorMessage;

  const AppFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class NetworkFailure extends AppFailure {
  const NetworkFailure(super.errorMessage);
}

class UnAuthFailure extends AppFailure {
  const UnAuthFailure(super.errorMessage);
}

class IncorrectInputFailure extends AppFailure {
  const IncorrectInputFailure(super.errorMessage);
}

class UnKnownFailure extends AppFailure {
  const UnKnownFailure(super.errorMessage);
}

class NotFoundFailure extends AppFailure {
  const NotFoundFailure(super.errorMessage);
}
