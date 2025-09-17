// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_admin_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperAdminResponseEntityImpl _$$SuperAdminResponseEntityImplFromJson(
  Map<String, dynamic> json,
) => _$SuperAdminResponseEntityImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: SuperAdminEntity.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SuperAdminResponseEntityImplToJson(
  _$SuperAdminResponseEntityImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};
