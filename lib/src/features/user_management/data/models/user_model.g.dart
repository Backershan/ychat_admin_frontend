// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      uid: json['uid'] as String,
      email: json['email'] as String,
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
      ipAddress: json['ipAddress'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      lastLoginAt: json['lastLoginAt'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'uid': instance.uid,
      'email': instance.email,
      'status': _$UserStatusEnumMap[instance.status]!,
      'ipAddress': instance.ipAddress,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'avatar': instance.avatar,
      'role': instance.role,
      'lastLoginAt': instance.lastLoginAt,
      'deviceInfo': instance.deviceInfo,
    };

const _$UserStatusEnumMap = {
  UserStatus.active: 'active',
  UserStatus.inactive: 'inactive',
  UserStatus.suspended: 'suspended',
  UserStatus.banned: 'banned',
};

_$UserListModelImpl _$$UserListModelImplFromJson(Map<String, dynamic> json) =>
    _$UserListModelImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$UserListModelImplToJson(_$UserListModelImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
    };

_$UpdateUserStatusRequestModelImpl _$$UpdateUserStatusRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateUserStatusRequestModelImpl(
  userId: json['userId'] as String,
  status: $enumDecode(_$UserStatusEnumMap, json['status']),
);

Map<String, dynamic> _$$UpdateUserStatusRequestModelImplToJson(
  _$UpdateUserStatusRequestModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'status': _$UserStatusEnumMap[instance.status]!,
};
