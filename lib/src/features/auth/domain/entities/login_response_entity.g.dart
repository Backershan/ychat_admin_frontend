// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseEntityImpl _$$LoginResponseEntityImplFromJson(
  Map<String, dynamic> json,
) => _$LoginResponseEntityImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: LoginDataEntity.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$LoginResponseEntityImplToJson(
  _$LoginResponseEntityImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_$LoginDataEntityImpl _$$LoginDataEntityImplFromJson(
  Map<String, dynamic> json,
) => _$LoginDataEntityImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  token: json['token'] as String,
);

Map<String, dynamic> _$$LoginDataEntityImplToJson(
  _$LoginDataEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'email': instance.email,
  'role': instance.role,
  'token': instance.token,
};
