import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final UserData user;

  @JsonKey(name: 'access_token')
  final String token;

  const UserModel({
    required this.user,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserData {
  final int id;
  @JsonKey(name: 'username')
  final String name;

  @JsonKey(name: 'group_id')
  final int groupId;

  const UserData({
    required this.id,
    required this.name,
    required this.groupId,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
