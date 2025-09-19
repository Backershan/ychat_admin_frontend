// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TicketEntity _$TicketEntityFromJson(Map<String, dynamic> json) {
  return _TicketEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  TicketUserEntity get user => throw _privateConstructorUsedError;
  List<TicketAttachmentEntity> get attachments =>
      throw _privateConstructorUsedError;
  List<TicketReplyEntity> get replies => throw _privateConstructorUsedError;

  /// Serializes this TicketEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketEntityCopyWith<TicketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEntityCopyWith<$Res> {
  factory $TicketEntityCopyWith(
    TicketEntity value,
    $Res Function(TicketEntity) then,
  ) = _$TicketEntityCopyWithImpl<$Res, TicketEntity>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String status,
    String priority,
    DateTime createdAt,
    DateTime updatedAt,
    TicketUserEntity user,
    List<TicketAttachmentEntity> attachments,
    List<TicketReplyEntity> replies,
  });

  $TicketUserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$TicketEntityCopyWithImpl<$Res, $Val extends TicketEntity>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
    Object? attachments = null,
    Object? replies = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as TicketUserEntity,
            attachments: null == attachments
                ? _value.attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                      as List<TicketAttachmentEntity>,
            replies: null == replies
                ? _value.replies
                : replies // ignore: cast_nullable_to_non_nullable
                      as List<TicketReplyEntity>,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketUserEntityCopyWith<$Res> get user {
    return $TicketUserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketEntityImplCopyWith<$Res>
    implements $TicketEntityCopyWith<$Res> {
  factory _$$TicketEntityImplCopyWith(
    _$TicketEntityImpl value,
    $Res Function(_$TicketEntityImpl) then,
  ) = __$$TicketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String status,
    String priority,
    DateTime createdAt,
    DateTime updatedAt,
    TicketUserEntity user,
    List<TicketAttachmentEntity> attachments,
    List<TicketReplyEntity> replies,
  });

  @override
  $TicketUserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$TicketEntityImplCopyWithImpl<$Res>
    extends _$TicketEntityCopyWithImpl<$Res, _$TicketEntityImpl>
    implements _$$TicketEntityImplCopyWith<$Res> {
  __$$TicketEntityImplCopyWithImpl(
    _$TicketEntityImpl _value,
    $Res Function(_$TicketEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
    Object? attachments = null,
    Object? replies = null,
  }) {
    return _then(
      _$TicketEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as TicketUserEntity,
        attachments: null == attachments
            ? _value._attachments
            : attachments // ignore: cast_nullable_to_non_nullable
                  as List<TicketAttachmentEntity>,
        replies: null == replies
            ? _value._replies
            : replies // ignore: cast_nullable_to_non_nullable
                  as List<TicketReplyEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketEntityImpl implements _TicketEntity {
  const _$TicketEntityImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.priority,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    final List<TicketAttachmentEntity> attachments = const [],
    final List<TicketReplyEntity> replies = const [],
  }) : _attachments = attachments,
       _replies = replies;

  factory _$TicketEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String status;
  @override
  final String priority;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final TicketUserEntity user;
  final List<TicketAttachmentEntity> _attachments;
  @override
  @JsonKey()
  List<TicketAttachmentEntity> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  final List<TicketReplyEntity> _replies;
  @override
  @JsonKey()
  List<TicketReplyEntity> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'TicketEntity(id: $id, title: $title, description: $description, status: $status, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, attachments: $attachments, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(
              other._attachments,
              _attachments,
            ) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    status,
    priority,
    createdAt,
    updatedAt,
    user,
    const DeepCollectionEquality().hash(_attachments),
    const DeepCollectionEquality().hash(_replies),
  );

  /// Create a copy of TicketEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      __$$TicketEntityImplCopyWithImpl<_$TicketEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketEntityImplToJson(this);
  }
}

abstract class _TicketEntity implements TicketEntity {
  const factory _TicketEntity({
    required final int id,
    required final String title,
    required final String description,
    required final String status,
    required final String priority,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final TicketUserEntity user,
    final List<TicketAttachmentEntity> attachments,
    final List<TicketReplyEntity> replies,
  }) = _$TicketEntityImpl;

  factory _TicketEntity.fromJson(Map<String, dynamic> json) =
      _$TicketEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get status;
  @override
  String get priority;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  TicketUserEntity get user;
  @override
  List<TicketAttachmentEntity> get attachments;
  @override
  List<TicketReplyEntity> get replies;

  /// Create a copy of TicketEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketUserEntity _$TicketUserEntityFromJson(Map<String, dynamic> json) {
  return _TicketUserEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketUserEntity {
  int get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this TicketUserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketUserEntityCopyWith<TicketUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketUserEntityCopyWith<$Res> {
  factory $TicketUserEntityCopyWith(
    TicketUserEntity value,
    $Res Function(TicketUserEntity) then,
  ) = _$TicketUserEntityCopyWithImpl<$Res, TicketUserEntity>;
  @useResult
  $Res call({
    int id,
    String firstname,
    String email,
    String? phone,
    String? avatarUrl,
  });
}

/// @nodoc
class _$TicketUserEntityCopyWithImpl<$Res, $Val extends TicketUserEntity>
    implements $TicketUserEntityCopyWith<$Res> {
  _$TicketUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? email = null,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            firstname: null == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketUserEntityImplCopyWith<$Res>
    implements $TicketUserEntityCopyWith<$Res> {
  factory _$$TicketUserEntityImplCopyWith(
    _$TicketUserEntityImpl value,
    $Res Function(_$TicketUserEntityImpl) then,
  ) = __$$TicketUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String firstname,
    String email,
    String? phone,
    String? avatarUrl,
  });
}

/// @nodoc
class __$$TicketUserEntityImplCopyWithImpl<$Res>
    extends _$TicketUserEntityCopyWithImpl<$Res, _$TicketUserEntityImpl>
    implements _$$TicketUserEntityImplCopyWith<$Res> {
  __$$TicketUserEntityImplCopyWithImpl(
    _$TicketUserEntityImpl _value,
    $Res Function(_$TicketUserEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? email = null,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _$TicketUserEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        firstname: null == firstname
            ? _value.firstname
            : firstname // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketUserEntityImpl implements _TicketUserEntity {
  const _$TicketUserEntityImpl({
    required this.id,
    required this.firstname,
    required this.email,
    this.phone,
    this.avatarUrl,
  });

  factory _$TicketUserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketUserEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String firstname;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'TicketUserEntity(id: $id, firstname: $firstname, email: $email, phone: $phone, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketUserEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstname, email, phone, avatarUrl);

  /// Create a copy of TicketUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketUserEntityImplCopyWith<_$TicketUserEntityImpl> get copyWith =>
      __$$TicketUserEntityImplCopyWithImpl<_$TicketUserEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketUserEntityImplToJson(this);
  }
}

abstract class _TicketUserEntity implements TicketUserEntity {
  const factory _TicketUserEntity({
    required final int id,
    required final String firstname,
    required final String email,
    final String? phone,
    final String? avatarUrl,
  }) = _$TicketUserEntityImpl;

  factory _TicketUserEntity.fromJson(Map<String, dynamic> json) =
      _$TicketUserEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get firstname;
  @override
  String get email;
  @override
  String? get phone;
  @override
  String? get avatarUrl;

  /// Create a copy of TicketUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketUserEntityImplCopyWith<_$TicketUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketAttachmentEntity _$TicketAttachmentEntityFromJson(
  Map<String, dynamic> json,
) {
  return _TicketAttachmentEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketAttachmentEntity {
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;

  /// Serializes this TicketAttachmentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketAttachmentEntityCopyWith<TicketAttachmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketAttachmentEntityCopyWith<$Res> {
  factory $TicketAttachmentEntityCopyWith(
    TicketAttachmentEntity value,
    $Res Function(TicketAttachmentEntity) then,
  ) = _$TicketAttachmentEntityCopyWithImpl<$Res, TicketAttachmentEntity>;
  @useResult
  $Res call({String type, String url, String? filename, int? fileSize});
}

/// @nodoc
class _$TicketAttachmentEntityCopyWithImpl<
  $Res,
  $Val extends TicketAttachmentEntity
>
    implements $TicketAttachmentEntityCopyWith<$Res> {
  _$TicketAttachmentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? filename = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            filename: freezed == filename
                ? _value.filename
                : filename // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileSize: freezed == fileSize
                ? _value.fileSize
                : fileSize // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketAttachmentEntityImplCopyWith<$Res>
    implements $TicketAttachmentEntityCopyWith<$Res> {
  factory _$$TicketAttachmentEntityImplCopyWith(
    _$TicketAttachmentEntityImpl value,
    $Res Function(_$TicketAttachmentEntityImpl) then,
  ) = __$$TicketAttachmentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String url, String? filename, int? fileSize});
}

/// @nodoc
class __$$TicketAttachmentEntityImplCopyWithImpl<$Res>
    extends
        _$TicketAttachmentEntityCopyWithImpl<$Res, _$TicketAttachmentEntityImpl>
    implements _$$TicketAttachmentEntityImplCopyWith<$Res> {
  __$$TicketAttachmentEntityImplCopyWithImpl(
    _$TicketAttachmentEntityImpl _value,
    $Res Function(_$TicketAttachmentEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? filename = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(
      _$TicketAttachmentEntityImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        filename: freezed == filename
            ? _value.filename
            : filename // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _value.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketAttachmentEntityImpl implements _TicketAttachmentEntity {
  const _$TicketAttachmentEntityImpl({
    required this.type,
    required this.url,
    this.filename,
    this.fileSize,
  });

  factory _$TicketAttachmentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketAttachmentEntityImplFromJson(json);

  @override
  final String type;
  @override
  final String url;
  @override
  final String? filename;
  @override
  final int? fileSize;

  @override
  String toString() {
    return 'TicketAttachmentEntity(type: $type, url: $url, filename: $filename, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketAttachmentEntityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, url, filename, fileSize);

  /// Create a copy of TicketAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketAttachmentEntityImplCopyWith<_$TicketAttachmentEntityImpl>
  get copyWith =>
      __$$TicketAttachmentEntityImplCopyWithImpl<_$TicketAttachmentEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketAttachmentEntityImplToJson(this);
  }
}

abstract class _TicketAttachmentEntity implements TicketAttachmentEntity {
  const factory _TicketAttachmentEntity({
    required final String type,
    required final String url,
    final String? filename,
    final int? fileSize,
  }) = _$TicketAttachmentEntityImpl;

  factory _TicketAttachmentEntity.fromJson(Map<String, dynamic> json) =
      _$TicketAttachmentEntityImpl.fromJson;

  @override
  String get type;
  @override
  String get url;
  @override
  String? get filename;
  @override
  int? get fileSize;

  /// Create a copy of TicketAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketAttachmentEntityImplCopyWith<_$TicketAttachmentEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TicketReplyEntity _$TicketReplyEntityFromJson(Map<String, dynamic> json) {
  return _TicketReplyEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketReplyEntity {
  String get from => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TicketReplyEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketReplyEntityCopyWith<TicketReplyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketReplyEntityCopyWith<$Res> {
  factory $TicketReplyEntityCopyWith(
    TicketReplyEntity value,
    $Res Function(TicketReplyEntity) then,
  ) = _$TicketReplyEntityCopyWithImpl<$Res, TicketReplyEntity>;
  @useResult
  $Res call({String from, String text, String? image, DateTime createdAt});
}

/// @nodoc
class _$TicketReplyEntityCopyWithImpl<$Res, $Val extends TicketReplyEntity>
    implements $TicketReplyEntityCopyWith<$Res> {
  _$TicketReplyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? text = null,
    Object? image = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            from: null == from
                ? _value.from
                : from // ignore: cast_nullable_to_non_nullable
                      as String,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketReplyEntityImplCopyWith<$Res>
    implements $TicketReplyEntityCopyWith<$Res> {
  factory _$$TicketReplyEntityImplCopyWith(
    _$TicketReplyEntityImpl value,
    $Res Function(_$TicketReplyEntityImpl) then,
  ) = __$$TicketReplyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String text, String? image, DateTime createdAt});
}

/// @nodoc
class __$$TicketReplyEntityImplCopyWithImpl<$Res>
    extends _$TicketReplyEntityCopyWithImpl<$Res, _$TicketReplyEntityImpl>
    implements _$$TicketReplyEntityImplCopyWith<$Res> {
  __$$TicketReplyEntityImplCopyWithImpl(
    _$TicketReplyEntityImpl _value,
    $Res Function(_$TicketReplyEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? text = null,
    Object? image = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$TicketReplyEntityImpl(
        from: null == from
            ? _value.from
            : from // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketReplyEntityImpl implements _TicketReplyEntity {
  const _$TicketReplyEntityImpl({
    required this.from,
    required this.text,
    this.image,
    required this.createdAt,
  });

  factory _$TicketReplyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketReplyEntityImplFromJson(json);

  @override
  final String from;
  @override
  final String text;
  @override
  final String? image;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'TicketReplyEntity(from: $from, text: $text, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketReplyEntityImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, text, image, createdAt);

  /// Create a copy of TicketReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketReplyEntityImplCopyWith<_$TicketReplyEntityImpl> get copyWith =>
      __$$TicketReplyEntityImplCopyWithImpl<_$TicketReplyEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketReplyEntityImplToJson(this);
  }
}

abstract class _TicketReplyEntity implements TicketReplyEntity {
  const factory _TicketReplyEntity({
    required final String from,
    required final String text,
    final String? image,
    required final DateTime createdAt,
  }) = _$TicketReplyEntityImpl;

  factory _TicketReplyEntity.fromJson(Map<String, dynamic> json) =
      _$TicketReplyEntityImpl.fromJson;

  @override
  String get from;
  @override
  String get text;
  @override
  String? get image;
  @override
  DateTime get createdAt;

  /// Create a copy of TicketReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketReplyEntityImplCopyWith<_$TicketReplyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketPaginationEntity _$TicketPaginationEntityFromJson(
  Map<String, dynamic> json,
) {
  return _TicketPaginationEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketPaginationEntity {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this TicketPaginationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketPaginationEntityCopyWith<TicketPaginationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketPaginationEntityCopyWith<$Res> {
  factory $TicketPaginationEntityCopyWith(
    TicketPaginationEntity value,
    $Res Function(TicketPaginationEntity) then,
  ) = _$TicketPaginationEntityCopyWithImpl<$Res, TicketPaginationEntity>;
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class _$TicketPaginationEntityCopyWithImpl<
  $Res,
  $Val extends TicketPaginationEntity
>
    implements $TicketPaginationEntityCopyWith<$Res> {
  _$TicketPaginationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            pages: null == pages
                ? _value.pages
                : pages // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketPaginationEntityImplCopyWith<$Res>
    implements $TicketPaginationEntityCopyWith<$Res> {
  factory _$$TicketPaginationEntityImplCopyWith(
    _$TicketPaginationEntityImpl value,
    $Res Function(_$TicketPaginationEntityImpl) then,
  ) = __$$TicketPaginationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class __$$TicketPaginationEntityImplCopyWithImpl<$Res>
    extends
        _$TicketPaginationEntityCopyWithImpl<$Res, _$TicketPaginationEntityImpl>
    implements _$$TicketPaginationEntityImplCopyWith<$Res> {
  __$$TicketPaginationEntityImplCopyWithImpl(
    _$TicketPaginationEntityImpl _value,
    $Res Function(_$TicketPaginationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _$TicketPaginationEntityImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pages: null == pages
            ? _value.pages
            : pages // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketPaginationEntityImpl implements _TicketPaginationEntity {
  const _$TicketPaginationEntityImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory _$TicketPaginationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketPaginationEntityImplFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;
  @override
  final int limit;

  @override
  String toString() {
    return 'TicketPaginationEntity(total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketPaginationEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages, limit);

  /// Create a copy of TicketPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketPaginationEntityImplCopyWith<_$TicketPaginationEntityImpl>
  get copyWith =>
      __$$TicketPaginationEntityImplCopyWithImpl<_$TicketPaginationEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketPaginationEntityImplToJson(this);
  }
}

abstract class _TicketPaginationEntity implements TicketPaginationEntity {
  const factory _TicketPaginationEntity({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$TicketPaginationEntityImpl;

  factory _TicketPaginationEntity.fromJson(Map<String, dynamic> json) =
      _$TicketPaginationEntityImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of TicketPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketPaginationEntityImplCopyWith<_$TicketPaginationEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TicketListEntity _$TicketListEntityFromJson(Map<String, dynamic> json) {
  return _TicketListEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketListEntity {
  Map<String, List<TicketEntity>> get tickets =>
      throw _privateConstructorUsedError;
  TicketPaginationEntity get pagination => throw _privateConstructorUsedError;

  /// Serializes this TicketListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketListEntityCopyWith<TicketListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketListEntityCopyWith<$Res> {
  factory $TicketListEntityCopyWith(
    TicketListEntity value,
    $Res Function(TicketListEntity) then,
  ) = _$TicketListEntityCopyWithImpl<$Res, TicketListEntity>;
  @useResult
  $Res call({
    Map<String, List<TicketEntity>> tickets,
    TicketPaginationEntity pagination,
  });

  $TicketPaginationEntityCopyWith<$Res> get pagination;
}

/// @nodoc
class _$TicketListEntityCopyWithImpl<$Res, $Val extends TicketListEntity>
    implements $TicketListEntityCopyWith<$Res> {
  _$TicketListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tickets = null, Object? pagination = null}) {
    return _then(
      _value.copyWith(
            tickets: null == tickets
                ? _value.tickets
                : tickets // ignore: cast_nullable_to_non_nullable
                      as Map<String, List<TicketEntity>>,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as TicketPaginationEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketPaginationEntityCopyWith<$Res> get pagination {
    return $TicketPaginationEntityCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketListEntityImplCopyWith<$Res>
    implements $TicketListEntityCopyWith<$Res> {
  factory _$$TicketListEntityImplCopyWith(
    _$TicketListEntityImpl value,
    $Res Function(_$TicketListEntityImpl) then,
  ) = __$$TicketListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Map<String, List<TicketEntity>> tickets,
    TicketPaginationEntity pagination,
  });

  @override
  $TicketPaginationEntityCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$TicketListEntityImplCopyWithImpl<$Res>
    extends _$TicketListEntityCopyWithImpl<$Res, _$TicketListEntityImpl>
    implements _$$TicketListEntityImplCopyWith<$Res> {
  __$$TicketListEntityImplCopyWithImpl(
    _$TicketListEntityImpl _value,
    $Res Function(_$TicketListEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tickets = null, Object? pagination = null}) {
    return _then(
      _$TicketListEntityImpl(
        tickets: null == tickets
            ? _value._tickets
            : tickets // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<TicketEntity>>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as TicketPaginationEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketListEntityImpl implements _TicketListEntity {
  const _$TicketListEntityImpl({
    required final Map<String, List<TicketEntity>> tickets,
    required this.pagination,
  }) : _tickets = tickets;

  factory _$TicketListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketListEntityImplFromJson(json);

  final Map<String, List<TicketEntity>> _tickets;
  @override
  Map<String, List<TicketEntity>> get tickets {
    if (_tickets is EqualUnmodifiableMapView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tickets);
  }

  @override
  final TicketPaginationEntity pagination;

  @override
  String toString() {
    return 'TicketListEntity(tickets: $tickets, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketListEntityImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_tickets),
    pagination,
  );

  /// Create a copy of TicketListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketListEntityImplCopyWith<_$TicketListEntityImpl> get copyWith =>
      __$$TicketListEntityImplCopyWithImpl<_$TicketListEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketListEntityImplToJson(this);
  }
}

abstract class _TicketListEntity implements TicketListEntity {
  const factory _TicketListEntity({
    required final Map<String, List<TicketEntity>> tickets,
    required final TicketPaginationEntity pagination,
  }) = _$TicketListEntityImpl;

  factory _TicketListEntity.fromJson(Map<String, dynamic> json) =
      _$TicketListEntityImpl.fromJson;

  @override
  Map<String, List<TicketEntity>> get tickets;
  @override
  TicketPaginationEntity get pagination;

  /// Create a copy of TicketListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketListEntityImplCopyWith<_$TicketListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketStatsEntity _$TicketStatsEntityFromJson(Map<String, dynamic> json) {
  return _TicketStatsEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketStatsEntity {
  int get total => throw _privateConstructorUsedError;
  int get opened => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  int get closed => throw _privateConstructorUsedError;
  int get highPriority => throw _privateConstructorUsedError;
  int get urgent => throw _privateConstructorUsedError;

  /// Serializes this TicketStatsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketStatsEntityCopyWith<TicketStatsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStatsEntityCopyWith<$Res> {
  factory $TicketStatsEntityCopyWith(
    TicketStatsEntity value,
    $Res Function(TicketStatsEntity) then,
  ) = _$TicketStatsEntityCopyWithImpl<$Res, TicketStatsEntity>;
  @useResult
  $Res call({
    int total,
    int opened,
    int pending,
    int closed,
    int highPriority,
    int urgent,
  });
}

/// @nodoc
class _$TicketStatsEntityCopyWithImpl<$Res, $Val extends TicketStatsEntity>
    implements $TicketStatsEntityCopyWith<$Res> {
  _$TicketStatsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? opened = null,
    Object? pending = null,
    Object? closed = null,
    Object? highPriority = null,
    Object? urgent = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            opened: null == opened
                ? _value.opened
                : opened // ignore: cast_nullable_to_non_nullable
                      as int,
            pending: null == pending
                ? _value.pending
                : pending // ignore: cast_nullable_to_non_nullable
                      as int,
            closed: null == closed
                ? _value.closed
                : closed // ignore: cast_nullable_to_non_nullable
                      as int,
            highPriority: null == highPriority
                ? _value.highPriority
                : highPriority // ignore: cast_nullable_to_non_nullable
                      as int,
            urgent: null == urgent
                ? _value.urgent
                : urgent // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketStatsEntityImplCopyWith<$Res>
    implements $TicketStatsEntityCopyWith<$Res> {
  factory _$$TicketStatsEntityImplCopyWith(
    _$TicketStatsEntityImpl value,
    $Res Function(_$TicketStatsEntityImpl) then,
  ) = __$$TicketStatsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int opened,
    int pending,
    int closed,
    int highPriority,
    int urgent,
  });
}

/// @nodoc
class __$$TicketStatsEntityImplCopyWithImpl<$Res>
    extends _$TicketStatsEntityCopyWithImpl<$Res, _$TicketStatsEntityImpl>
    implements _$$TicketStatsEntityImplCopyWith<$Res> {
  __$$TicketStatsEntityImplCopyWithImpl(
    _$TicketStatsEntityImpl _value,
    $Res Function(_$TicketStatsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? opened = null,
    Object? pending = null,
    Object? closed = null,
    Object? highPriority = null,
    Object? urgent = null,
  }) {
    return _then(
      _$TicketStatsEntityImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        opened: null == opened
            ? _value.opened
            : opened // ignore: cast_nullable_to_non_nullable
                  as int,
        pending: null == pending
            ? _value.pending
            : pending // ignore: cast_nullable_to_non_nullable
                  as int,
        closed: null == closed
            ? _value.closed
            : closed // ignore: cast_nullable_to_non_nullable
                  as int,
        highPriority: null == highPriority
            ? _value.highPriority
            : highPriority // ignore: cast_nullable_to_non_nullable
                  as int,
        urgent: null == urgent
            ? _value.urgent
            : urgent // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketStatsEntityImpl implements _TicketStatsEntity {
  const _$TicketStatsEntityImpl({
    required this.total,
    required this.opened,
    required this.pending,
    required this.closed,
    required this.highPriority,
    required this.urgent,
  });

  factory _$TicketStatsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketStatsEntityImplFromJson(json);

  @override
  final int total;
  @override
  final int opened;
  @override
  final int pending;
  @override
  final int closed;
  @override
  final int highPriority;
  @override
  final int urgent;

  @override
  String toString() {
    return 'TicketStatsEntity(total: $total, opened: $opened, pending: $pending, closed: $closed, highPriority: $highPriority, urgent: $urgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStatsEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.opened, opened) || other.opened == opened) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.highPriority, highPriority) ||
                other.highPriority == highPriority) &&
            (identical(other.urgent, urgent) || other.urgent == urgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    opened,
    pending,
    closed,
    highPriority,
    urgent,
  );

  /// Create a copy of TicketStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStatsEntityImplCopyWith<_$TicketStatsEntityImpl> get copyWith =>
      __$$TicketStatsEntityImplCopyWithImpl<_$TicketStatsEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketStatsEntityImplToJson(this);
  }
}

abstract class _TicketStatsEntity implements TicketStatsEntity {
  const factory _TicketStatsEntity({
    required final int total,
    required final int opened,
    required final int pending,
    required final int closed,
    required final int highPriority,
    required final int urgent,
  }) = _$TicketStatsEntityImpl;

  factory _TicketStatsEntity.fromJson(Map<String, dynamic> json) =
      _$TicketStatsEntityImpl.fromJson;

  @override
  int get total;
  @override
  int get opened;
  @override
  int get pending;
  @override
  int get closed;
  @override
  int get highPriority;
  @override
  int get urgent;

  /// Create a copy of TicketStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketStatsEntityImplCopyWith<_$TicketStatsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
