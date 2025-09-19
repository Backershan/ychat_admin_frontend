import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String phone,
    required String uid,
    required String email,
    required UserStatus status,
    required String ipAddress,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? avatar,
    String? role,
    String? lastLoginAt,
    String? deviceInfo,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class UserListModel with _$UserListModel {
  const factory UserListModel({
    required List<UserModel> users,
    required int total,
    required int page,
    required int limit,
  }) = _UserListModel;

  factory UserListModel.fromJson(Map<String, dynamic> json) => _$UserListModelFromJson(json);
}

@freezed
class UpdateUserStatusRequestModel with _$UpdateUserStatusRequestModel {
  const factory UpdateUserStatusRequestModel({
    required String userId,
    required UserStatus status,
  }) = _UpdateUserStatusRequestModel;

  factory UpdateUserStatusRequestModel.fromJson(Map<String, dynamic> json) => 
      _$UpdateUserStatusRequestModelFromJson(json);
}
