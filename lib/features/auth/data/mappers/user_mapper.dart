import 'package:amana_task/features/auth/data/models/user/user_model.dart';
import 'package:amana_task/features/auth/domain/entities/user.dart';

extension UserMapper on UserData {
  User get fromModel => User(
        name: name,
      );
}
