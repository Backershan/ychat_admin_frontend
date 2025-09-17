// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_admin_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperAdminEntityImpl _$$SuperAdminEntityImplFromJson(
  Map<String, dynamic> json,
) => _$SuperAdminEntityImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  role: json['role'] as bool,
  token: json['token'] as String,
  refreshToken: json['refreshToken'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  refreshTokenExpiry: DateTime.parse(json['refreshTokenExpiry'] as String),
);

Map<String, dynamic> _$$SuperAdminEntityImplToJson(
  _$SuperAdminEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'role': instance.role,
  'token': instance.token,
  'refreshToken': instance.refreshToken,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'refreshTokenExpiry': instance.refreshTokenExpiry.toIso8601String(),
};
