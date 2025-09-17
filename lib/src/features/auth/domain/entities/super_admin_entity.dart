import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_admin_entity.freezed.dart';
part 'super_admin_entity.g.dart';

@freezed
class SuperAdminEntity with _$SuperAdminEntity {
  const factory SuperAdminEntity({
    required int id,
    required String name,
    required String email,
    required bool role,
    required String token,
    required String refreshToken,
    required DateTime expiresAt,
    required DateTime refreshTokenExpiry,
  }) = _SuperAdminEntity;

  factory SuperAdminEntity.fromJson(Map<String, dynamic> json) =>
      _$SuperAdminEntityFromJson(json);
}
