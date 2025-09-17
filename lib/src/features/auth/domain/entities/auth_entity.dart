import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';

@freezed
class AuthEntity with _$AuthEntity {
  const factory AuthEntity({
    required String token,
    required String refreshToken,
    required UserEntity user,
    required DateTime expiresAt,
    required DateTime refreshTokenExpiry,
  }) = _AuthEntity;

  factory AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthEntityFromJson(json);
}

