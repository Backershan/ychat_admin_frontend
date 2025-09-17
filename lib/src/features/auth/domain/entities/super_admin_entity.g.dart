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
  phone: json['phone'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  location: json['location'] as String,
);

Map<String, dynamic> _$$SuperAdminEntityImplToJson(
  _$SuperAdminEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'email': instance.email,
  'role': instance.role,
  'location': instance.location,
};
