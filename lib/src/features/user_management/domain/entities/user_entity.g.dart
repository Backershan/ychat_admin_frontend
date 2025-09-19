// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      id: (json['id'] as num).toInt(),
      firstname: json['firstname'] as String,
      email: json['email'] as String,
      status: json['status'] as String,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      banReason: json['banReason'] as String?,
      banType: json['banType'] as String?,
      bannedAt: json['bannedAt'] == null
          ? null
          : DateTime.parse(json['bannedAt'] as String),
      deactivationReason: json['deactivationReason'] as String?,
      deactivatedAt: json['deactivatedAt'] == null
          ? null
          : DateTime.parse(json['deactivatedAt'] as String),
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'email': instance.email,
      'status': instance.status,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'banReason': instance.banReason,
      'banType': instance.banType,
      'bannedAt': instance.bannedAt?.toIso8601String(),
      'deactivationReason': instance.deactivationReason,
      'deactivatedAt': instance.deactivatedAt?.toIso8601String(),
    };

_$UserListEntityImpl _$$UserListEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserListEntityImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: UserPaginationEntity.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$UserListEntityImplToJson(
  _$UserListEntityImpl instance,
) => <String, dynamic>{
  'users': instance.users,
  'pagination': instance.pagination,
};

_$UserPaginationEntityImpl _$$UserPaginationEntityImplFromJson(
  Map<String, dynamic> json,
) => _$UserPaginationEntityImpl(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$$UserPaginationEntityImplToJson(
  _$UserPaginationEntityImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'pages': instance.pages,
  'limit': instance.limit,
};

_$CreateUserRequestImpl _$$CreateUserRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateUserRequestImpl(
  firstname: json['firstname'] as String,
  email: json['email'] as String,
  lastname: json['lastname'] as String?,
  phone: json['phone'] as String?,
  password: json['password'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$$CreateUserRequestImplToJson(
  _$CreateUserRequestImpl instance,
) => <String, dynamic>{
  'firstname': instance.firstname,
  'email': instance.email,
  'lastname': instance.lastname,
  'phone': instance.phone,
  'password': instance.password,
  'status': instance.status,
};

_$UpdateUserRequestImpl _$$UpdateUserRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateUserRequestImpl(
  userId: (json['userId'] as num).toInt(),
  firstname: json['firstname'] as String?,
  lastname: json['lastname'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$$UpdateUserRequestImplToJson(
  _$UpdateUserRequestImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'email': instance.email,
  'phone': instance.phone,
  'status': instance.status,
};

_$UpdateUserStatusRequestImpl _$$UpdateUserStatusRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateUserStatusRequestImpl(
  userId: (json['userId'] as num).toInt(),
  status: json['status'] as String,
);

Map<String, dynamic> _$$UpdateUserStatusRequestImplToJson(
  _$UpdateUserStatusRequestImpl instance,
) => <String, dynamic>{'userId': instance.userId, 'status': instance.status};

_$BanUserRequestImpl _$$BanUserRequestImplFromJson(Map<String, dynamic> json) =>
    _$BanUserRequestImpl(
      reason: json['reason'] as String,
      banType: json['banType'] as String,
    );

Map<String, dynamic> _$$BanUserRequestImplToJson(
  _$BanUserRequestImpl instance,
) => <String, dynamic>{'reason': instance.reason, 'banType': instance.banType};

_$DeactivateUserRequestImpl _$$DeactivateUserRequestImplFromJson(
  Map<String, dynamic> json,
) => _$DeactivateUserRequestImpl(reason: json['reason'] as String);

Map<String, dynamic> _$$DeactivateUserRequestImplToJson(
  _$DeactivateUserRequestImpl instance,
) => <String, dynamic>{'reason': instance.reason};

_$UserSearchParamsImpl _$$UserSearchParamsImplFromJson(
  Map<String, dynamic> json,
) => _$UserSearchParamsImpl(
  search: json['search'] as String?,
  status: json['status'] as String?,
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$$UserSearchParamsImplToJson(
  _$UserSearchParamsImpl instance,
) => <String, dynamic>{
  'search': instance.search,
  'status': instance.status,
  'page': instance.page,
  'limit': instance.limit,
};
