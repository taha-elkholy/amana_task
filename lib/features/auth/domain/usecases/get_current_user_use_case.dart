import 'package:amana_task/features/auth/domain/entities/user.dart';
import 'package:amana_task/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentUserUseCase {
  final AuthRepository _repository;

  GetCurrentUserUseCase(this._repository);

  User? call() {
    return _repository.getCurrentUser();
  }
}
