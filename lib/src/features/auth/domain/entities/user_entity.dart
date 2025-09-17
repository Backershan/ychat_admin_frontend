import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String role,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? avatar,
    String? phoneNumber,
    String? department,
    String? position,
    DateTime? lastLoginAt,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
