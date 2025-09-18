// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileEntityImpl _$$ProfileEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProfileEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String?,
      avatar: json['avatar'] as String?,
      isActive: json['isActive'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
    );

Map<String, dynamic> _$$ProfileEntityImplToJson(_$ProfileEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'bio': instance.bio,
      'avatar': instance.avatar,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
    };

_$UpdateProfileRequestImpl _$$UpdateProfileRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateProfileRequestImpl(
  name: json['name'] as String,
  bio: json['bio'] as String?,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$$UpdateProfileRequestImplToJson(
  _$UpdateProfileRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'bio': instance.bio,
  'avatar': instance.avatar,
};

_$ChangePasswordRequestImpl _$$ChangePasswordRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ChangePasswordRequestImpl(
  currentPassword: json['currentPassword'] as String,
  newPassword: json['newPassword'] as String,
  confirmPassword: json['confirmPassword'] as String,
);

Map<String, dynamic> _$$ChangePasswordRequestImplToJson(
  _$ChangePasswordRequestImpl instance,
) => <String, dynamic>{
  'currentPassword': instance.currentPassword,
  'newPassword': instance.newPassword,
  'confirmPassword': instance.confirmPassword,
};

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProfileResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ProfileEntity.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ProfileResponseImplToJson(
  _$ProfileResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};
