// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      status: json['status'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] as String?,
      lastSeen: json['lastSeen'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      uid: json['uid'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      ipAddress: json['ipAddress'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
      lastLoginAt: json['lastLoginAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      banReason: json['banReason'] as String?,
      banType: json['banType'] as String?,
      deactivationReason: json['deactivationReason'] as String?,
      isBanned: json['isBanned'] as bool?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'status': instance.status,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'lastSeen': instance.lastSeen,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'uid': instance.uid,
      'avatar': instance.avatar,
      'role': instance.role,
      'ipAddress': instance.ipAddress,
      'deviceInfo': instance.deviceInfo,
      'lastLoginAt': instance.lastLoginAt,
      'updatedAt': instance.updatedAt,
      'banReason': instance.banReason,
      'banType': instance.banType,
      'deactivationReason': instance.deactivationReason,
      'isBanned': instance.isBanned,
    };

_$UserListResponseImpl _$$UserListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserListResponseImpl(
  success: json['success'] as bool,
  data: UserListData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$UserListResponseImplToJson(
  _$UserListResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_$UserListDataImpl _$$UserListDataImplFromJson(Map<String, dynamic> json) =>
    _$UserListDataImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: UserPagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$UserListDataImplToJson(_$UserListDataImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
      'pagination': instance.pagination,
    };

_$UserPaginationImpl _$$UserPaginationImplFromJson(Map<String, dynamic> json) =>
    _$UserPaginationImpl(
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$UserPaginationImplToJson(
  _$UserPaginationImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'pages': instance.pages,
  'limit': instance.limit,
};

_$UserActionResponseImpl _$$UserActionResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserActionResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : UserEntity.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UserActionResponseImplToJson(
  _$UserActionResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_$UserStatusUpdateRequestImpl _$$UserStatusUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UserStatusUpdateRequestImpl(
  action: json['action'] as String,
  data: UserStatusData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UserStatusUpdateRequestImplToJson(
  _$UserStatusUpdateRequestImpl instance,
) => <String, dynamic>{'action': instance.action, 'data': instance.data};

_$UserStatusDataImpl _$$UserStatusDataImplFromJson(Map<String, dynamic> json) =>
    _$UserStatusDataImpl(
      userId: (json['userId'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$UserStatusDataImplToJson(
  _$UserStatusDataImpl instance,
) => <String, dynamic>{'userId': instance.userId, 'status': instance.status};

_$UserBanRequestImpl _$$UserBanRequestImplFromJson(Map<String, dynamic> json) =>
    _$UserBanRequestImpl(
      reason: json['reason'] as String,
      banType: json['banType'] as String,
    );

Map<String, dynamic> _$$UserBanRequestImplToJson(
  _$UserBanRequestImpl instance,
) => <String, dynamic>{'reason': instance.reason, 'banType': instance.banType};

_$UserDeactivationRequestImpl _$$UserDeactivationRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UserDeactivationRequestImpl(reason: json['reason'] as String);

Map<String, dynamic> _$$UserDeactivationRequestImplToJson(
  _$UserDeactivationRequestImpl instance,
) => <String, dynamic>{'reason': instance.reason};
