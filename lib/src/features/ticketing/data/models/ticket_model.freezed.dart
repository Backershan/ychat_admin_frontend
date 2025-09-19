// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  TicketUserModel get user => throw _privateConstructorUsedError;
  List<TicketAttachmentModel> get attachments =>
      throw _privateConstructorUsedError;
  List<TicketReplyModel> get replies => throw _privateConstructorUsedError;

  /// Serializes this TicketModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
    TicketModel value,
    $Res Function(TicketModel) then,
  ) = _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String status,
    String priority,
    DateTime createdAt,
    DateTime updatedAt,
    TicketUserModel user,
    List<TicketAttachmentModel> attachments,
    List<TicketReplyModel> replies,
  });

  $TicketUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketModel
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
                      as TicketUserModel,
            attachments: null == attachments
                ? _value.attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                      as List<TicketAttachmentModel>,
            replies: null == replies
                ? _value.replies
                : replies // ignore: cast_nullable_to_non_nullable
                      as List<TicketReplyModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketUserModelCopyWith<$Res> get user {
    return $TicketUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketModelImplCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$TicketModelImplCopyWith(
    _$TicketModelImpl value,
    $Res Function(_$TicketModelImpl) then,
  ) = __$$TicketModelImplCopyWithImpl<$Res>;
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
    TicketUserModel user,
    List<TicketAttachmentModel> attachments,
    List<TicketReplyModel> replies,
  });

  @override
  $TicketUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$TicketModelImplCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$TicketModelImpl>
    implements _$$TicketModelImplCopyWith<$Res> {
  __$$TicketModelImplCopyWithImpl(
    _$TicketModelImpl _value,
    $Res Function(_$TicketModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketModel
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
      _$TicketModelImpl(
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
                  as TicketUserModel,
        attachments: null == attachments
            ? _value._attachments
            : attachments // ignore: cast_nullable_to_non_nullable
                  as List<TicketAttachmentModel>,
        replies: null == replies
            ? _value._replies
            : replies // ignore: cast_nullable_to_non_nullable
                  as List<TicketReplyModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketModelImpl implements _TicketModel {
  const _$TicketModelImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.priority,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    final List<TicketAttachmentModel> attachments = const [],
    final List<TicketReplyModel> replies = const [],
  }) : _attachments = attachments,
       _replies = replies;

  factory _$TicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketModelImplFromJson(json);

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
  final TicketUserModel user;
  final List<TicketAttachmentModel> _attachments;
  @override
  @JsonKey()
  List<TicketAttachmentModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  final List<TicketReplyModel> _replies;
  @override
  @JsonKey()
  List<TicketReplyModel> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'TicketModel(id: $id, title: $title, description: $description, status: $status, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, attachments: $attachments, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketModelImpl &&
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

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      __$$TicketModelImplCopyWithImpl<_$TicketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketModelImplToJson(this);
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel({
    required final int id,
    required final String title,
    required final String description,
    required final String status,
    required final String priority,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final TicketUserModel user,
    final List<TicketAttachmentModel> attachments,
    final List<TicketReplyModel> replies,
  }) = _$TicketModelImpl;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$TicketModelImpl.fromJson;

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
  TicketUserModel get user;
  @override
  List<TicketAttachmentModel> get attachments;
  @override
  List<TicketReplyModel> get replies;

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketUserModel _$TicketUserModelFromJson(Map<String, dynamic> json) {
  return _TicketUserModel.fromJson(json);
}

/// @nodoc
mixin _$TicketUserModel {
  int get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this TicketUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketUserModelCopyWith<TicketUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketUserModelCopyWith<$Res> {
  factory $TicketUserModelCopyWith(
    TicketUserModel value,
    $Res Function(TicketUserModel) then,
  ) = _$TicketUserModelCopyWithImpl<$Res, TicketUserModel>;
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
class _$TicketUserModelCopyWithImpl<$Res, $Val extends TicketUserModel>
    implements $TicketUserModelCopyWith<$Res> {
  _$TicketUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketUserModel
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
abstract class _$$TicketUserModelImplCopyWith<$Res>
    implements $TicketUserModelCopyWith<$Res> {
  factory _$$TicketUserModelImplCopyWith(
    _$TicketUserModelImpl value,
    $Res Function(_$TicketUserModelImpl) then,
  ) = __$$TicketUserModelImplCopyWithImpl<$Res>;
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
class __$$TicketUserModelImplCopyWithImpl<$Res>
    extends _$TicketUserModelCopyWithImpl<$Res, _$TicketUserModelImpl>
    implements _$$TicketUserModelImplCopyWith<$Res> {
  __$$TicketUserModelImplCopyWithImpl(
    _$TicketUserModelImpl _value,
    $Res Function(_$TicketUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketUserModel
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
      _$TicketUserModelImpl(
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
class _$TicketUserModelImpl implements _TicketUserModel {
  const _$TicketUserModelImpl({
    required this.id,
    required this.firstname,
    required this.email,
    this.phone,
    this.avatarUrl,
  });

  factory _$TicketUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketUserModelImplFromJson(json);

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
    return 'TicketUserModel(id: $id, firstname: $firstname, email: $email, phone: $phone, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketUserModelImpl &&
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

  /// Create a copy of TicketUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketUserModelImplCopyWith<_$TicketUserModelImpl> get copyWith =>
      __$$TicketUserModelImplCopyWithImpl<_$TicketUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketUserModelImplToJson(this);
  }
}

abstract class _TicketUserModel implements TicketUserModel {
  const factory _TicketUserModel({
    required final int id,
    required final String firstname,
    required final String email,
    final String? phone,
    final String? avatarUrl,
  }) = _$TicketUserModelImpl;

  factory _TicketUserModel.fromJson(Map<String, dynamic> json) =
      _$TicketUserModelImpl.fromJson;

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

  /// Create a copy of TicketUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketUserModelImplCopyWith<_$TicketUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketAttachmentModel _$TicketAttachmentModelFromJson(
  Map<String, dynamic> json,
) {
  return _TicketAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$TicketAttachmentModel {
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;

  /// Serializes this TicketAttachmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketAttachmentModelCopyWith<TicketAttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketAttachmentModelCopyWith<$Res> {
  factory $TicketAttachmentModelCopyWith(
    TicketAttachmentModel value,
    $Res Function(TicketAttachmentModel) then,
  ) = _$TicketAttachmentModelCopyWithImpl<$Res, TicketAttachmentModel>;
  @useResult
  $Res call({String type, String url, String? filename, int? fileSize});
}

/// @nodoc
class _$TicketAttachmentModelCopyWithImpl<
  $Res,
  $Val extends TicketAttachmentModel
>
    implements $TicketAttachmentModelCopyWith<$Res> {
  _$TicketAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketAttachmentModel
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
abstract class _$$TicketAttachmentModelImplCopyWith<$Res>
    implements $TicketAttachmentModelCopyWith<$Res> {
  factory _$$TicketAttachmentModelImplCopyWith(
    _$TicketAttachmentModelImpl value,
    $Res Function(_$TicketAttachmentModelImpl) then,
  ) = __$$TicketAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String url, String? filename, int? fileSize});
}

/// @nodoc
class __$$TicketAttachmentModelImplCopyWithImpl<$Res>
    extends
        _$TicketAttachmentModelCopyWithImpl<$Res, _$TicketAttachmentModelImpl>
    implements _$$TicketAttachmentModelImplCopyWith<$Res> {
  __$$TicketAttachmentModelImplCopyWithImpl(
    _$TicketAttachmentModelImpl _value,
    $Res Function(_$TicketAttachmentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketAttachmentModel
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
      _$TicketAttachmentModelImpl(
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
class _$TicketAttachmentModelImpl implements _TicketAttachmentModel {
  const _$TicketAttachmentModelImpl({
    required this.type,
    required this.url,
    this.filename,
    this.fileSize,
  });

  factory _$TicketAttachmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketAttachmentModelImplFromJson(json);

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
    return 'TicketAttachmentModel(type: $type, url: $url, filename: $filename, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketAttachmentModelImpl &&
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

  /// Create a copy of TicketAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketAttachmentModelImplCopyWith<_$TicketAttachmentModelImpl>
  get copyWith =>
      __$$TicketAttachmentModelImplCopyWithImpl<_$TicketAttachmentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketAttachmentModelImplToJson(this);
  }
}

abstract class _TicketAttachmentModel implements TicketAttachmentModel {
  const factory _TicketAttachmentModel({
    required final String type,
    required final String url,
    final String? filename,
    final int? fileSize,
  }) = _$TicketAttachmentModelImpl;

  factory _TicketAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$TicketAttachmentModelImpl.fromJson;

  @override
  String get type;
  @override
  String get url;
  @override
  String? get filename;
  @override
  int? get fileSize;

  /// Create a copy of TicketAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketAttachmentModelImplCopyWith<_$TicketAttachmentModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TicketReplyModel _$TicketReplyModelFromJson(Map<String, dynamic> json) {
  return _TicketReplyModel.fromJson(json);
}

/// @nodoc
mixin _$TicketReplyModel {
  String get from => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TicketReplyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketReplyModelCopyWith<TicketReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketReplyModelCopyWith<$Res> {
  factory $TicketReplyModelCopyWith(
    TicketReplyModel value,
    $Res Function(TicketReplyModel) then,
  ) = _$TicketReplyModelCopyWithImpl<$Res, TicketReplyModel>;
  @useResult
  $Res call({String from, String text, String? image, DateTime createdAt});
}

/// @nodoc
class _$TicketReplyModelCopyWithImpl<$Res, $Val extends TicketReplyModel>
    implements $TicketReplyModelCopyWith<$Res> {
  _$TicketReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketReplyModel
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
abstract class _$$TicketReplyModelImplCopyWith<$Res>
    implements $TicketReplyModelCopyWith<$Res> {
  factory _$$TicketReplyModelImplCopyWith(
    _$TicketReplyModelImpl value,
    $Res Function(_$TicketReplyModelImpl) then,
  ) = __$$TicketReplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String text, String? image, DateTime createdAt});
}

/// @nodoc
class __$$TicketReplyModelImplCopyWithImpl<$Res>
    extends _$TicketReplyModelCopyWithImpl<$Res, _$TicketReplyModelImpl>
    implements _$$TicketReplyModelImplCopyWith<$Res> {
  __$$TicketReplyModelImplCopyWithImpl(
    _$TicketReplyModelImpl _value,
    $Res Function(_$TicketReplyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketReplyModel
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
      _$TicketReplyModelImpl(
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
class _$TicketReplyModelImpl implements _TicketReplyModel {
  const _$TicketReplyModelImpl({
    required this.from,
    required this.text,
    this.image,
    required this.createdAt,
  });

  factory _$TicketReplyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketReplyModelImplFromJson(json);

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
    return 'TicketReplyModel(from: $from, text: $text, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketReplyModelImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, text, image, createdAt);

  /// Create a copy of TicketReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketReplyModelImplCopyWith<_$TicketReplyModelImpl> get copyWith =>
      __$$TicketReplyModelImplCopyWithImpl<_$TicketReplyModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketReplyModelImplToJson(this);
  }
}

abstract class _TicketReplyModel implements TicketReplyModel {
  const factory _TicketReplyModel({
    required final String from,
    required final String text,
    final String? image,
    required final DateTime createdAt,
  }) = _$TicketReplyModelImpl;

  factory _TicketReplyModel.fromJson(Map<String, dynamic> json) =
      _$TicketReplyModelImpl.fromJson;

  @override
  String get from;
  @override
  String get text;
  @override
  String? get image;
  @override
  DateTime get createdAt;

  /// Create a copy of TicketReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketReplyModelImplCopyWith<_$TicketReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketPaginationModel _$TicketPaginationModelFromJson(
  Map<String, dynamic> json,
) {
  return _TicketPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$TicketPaginationModel {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this TicketPaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketPaginationModelCopyWith<TicketPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketPaginationModelCopyWith<$Res> {
  factory $TicketPaginationModelCopyWith(
    TicketPaginationModel value,
    $Res Function(TicketPaginationModel) then,
  ) = _$TicketPaginationModelCopyWithImpl<$Res, TicketPaginationModel>;
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class _$TicketPaginationModelCopyWithImpl<
  $Res,
  $Val extends TicketPaginationModel
>
    implements $TicketPaginationModelCopyWith<$Res> {
  _$TicketPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketPaginationModel
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
abstract class _$$TicketPaginationModelImplCopyWith<$Res>
    implements $TicketPaginationModelCopyWith<$Res> {
  factory _$$TicketPaginationModelImplCopyWith(
    _$TicketPaginationModelImpl value,
    $Res Function(_$TicketPaginationModelImpl) then,
  ) = __$$TicketPaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class __$$TicketPaginationModelImplCopyWithImpl<$Res>
    extends
        _$TicketPaginationModelCopyWithImpl<$Res, _$TicketPaginationModelImpl>
    implements _$$TicketPaginationModelImplCopyWith<$Res> {
  __$$TicketPaginationModelImplCopyWithImpl(
    _$TicketPaginationModelImpl _value,
    $Res Function(_$TicketPaginationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketPaginationModel
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
      _$TicketPaginationModelImpl(
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
class _$TicketPaginationModelImpl implements _TicketPaginationModel {
  const _$TicketPaginationModelImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory _$TicketPaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketPaginationModelImplFromJson(json);

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
    return 'TicketPaginationModel(total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketPaginationModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages, limit);

  /// Create a copy of TicketPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketPaginationModelImplCopyWith<_$TicketPaginationModelImpl>
  get copyWith =>
      __$$TicketPaginationModelImplCopyWithImpl<_$TicketPaginationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketPaginationModelImplToJson(this);
  }
}

abstract class _TicketPaginationModel implements TicketPaginationModel {
  const factory _TicketPaginationModel({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$TicketPaginationModelImpl;

  factory _TicketPaginationModel.fromJson(Map<String, dynamic> json) =
      _$TicketPaginationModelImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of TicketPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketPaginationModelImplCopyWith<_$TicketPaginationModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TicketListModel _$TicketListModelFromJson(Map<String, dynamic> json) {
  return _TicketListModel.fromJson(json);
}

/// @nodoc
mixin _$TicketListModel {
  Map<String, List<TicketModel>> get tickets =>
      throw _privateConstructorUsedError;
  TicketPaginationModel get pagination => throw _privateConstructorUsedError;

  /// Serializes this TicketListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketListModelCopyWith<TicketListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketListModelCopyWith<$Res> {
  factory $TicketListModelCopyWith(
    TicketListModel value,
    $Res Function(TicketListModel) then,
  ) = _$TicketListModelCopyWithImpl<$Res, TicketListModel>;
  @useResult
  $Res call({
    Map<String, List<TicketModel>> tickets,
    TicketPaginationModel pagination,
  });

  $TicketPaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class _$TicketListModelCopyWithImpl<$Res, $Val extends TicketListModel>
    implements $TicketListModelCopyWith<$Res> {
  _$TicketListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tickets = null, Object? pagination = null}) {
    return _then(
      _value.copyWith(
            tickets: null == tickets
                ? _value.tickets
                : tickets // ignore: cast_nullable_to_non_nullable
                      as Map<String, List<TicketModel>>,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as TicketPaginationModel,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketPaginationModelCopyWith<$Res> get pagination {
    return $TicketPaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketListModelImplCopyWith<$Res>
    implements $TicketListModelCopyWith<$Res> {
  factory _$$TicketListModelImplCopyWith(
    _$TicketListModelImpl value,
    $Res Function(_$TicketListModelImpl) then,
  ) = __$$TicketListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Map<String, List<TicketModel>> tickets,
    TicketPaginationModel pagination,
  });

  @override
  $TicketPaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$TicketListModelImplCopyWithImpl<$Res>
    extends _$TicketListModelCopyWithImpl<$Res, _$TicketListModelImpl>
    implements _$$TicketListModelImplCopyWith<$Res> {
  __$$TicketListModelImplCopyWithImpl(
    _$TicketListModelImpl _value,
    $Res Function(_$TicketListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tickets = null, Object? pagination = null}) {
    return _then(
      _$TicketListModelImpl(
        tickets: null == tickets
            ? _value._tickets
            : tickets // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<TicketModel>>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as TicketPaginationModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketListModelImpl implements _TicketListModel {
  const _$TicketListModelImpl({
    required final Map<String, List<TicketModel>> tickets,
    required this.pagination,
  }) : _tickets = tickets;

  factory _$TicketListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketListModelImplFromJson(json);

  final Map<String, List<TicketModel>> _tickets;
  @override
  Map<String, List<TicketModel>> get tickets {
    if (_tickets is EqualUnmodifiableMapView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tickets);
  }

  @override
  final TicketPaginationModel pagination;

  @override
  String toString() {
    return 'TicketListModel(tickets: $tickets, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketListModelImpl &&
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

  /// Create a copy of TicketListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketListModelImplCopyWith<_$TicketListModelImpl> get copyWith =>
      __$$TicketListModelImplCopyWithImpl<_$TicketListModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketListModelImplToJson(this);
  }
}

abstract class _TicketListModel implements TicketListModel {
  const factory _TicketListModel({
    required final Map<String, List<TicketModel>> tickets,
    required final TicketPaginationModel pagination,
  }) = _$TicketListModelImpl;

  factory _TicketListModel.fromJson(Map<String, dynamic> json) =
      _$TicketListModelImpl.fromJson;

  @override
  Map<String, List<TicketModel>> get tickets;
  @override
  TicketPaginationModel get pagination;

  /// Create a copy of TicketListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketListModelImplCopyWith<_$TicketListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketStatsModel _$TicketStatsModelFromJson(Map<String, dynamic> json) {
  return _TicketStatsModel.fromJson(json);
}

/// @nodoc
mixin _$TicketStatsModel {
  int get total => throw _privateConstructorUsedError;
  int get opened => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  int get closed => throw _privateConstructorUsedError;
  int get highPriority => throw _privateConstructorUsedError;
  int get urgent => throw _privateConstructorUsedError;

  /// Serializes this TicketStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketStatsModelCopyWith<TicketStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStatsModelCopyWith<$Res> {
  factory $TicketStatsModelCopyWith(
    TicketStatsModel value,
    $Res Function(TicketStatsModel) then,
  ) = _$TicketStatsModelCopyWithImpl<$Res, TicketStatsModel>;
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
class _$TicketStatsModelCopyWithImpl<$Res, $Val extends TicketStatsModel>
    implements $TicketStatsModelCopyWith<$Res> {
  _$TicketStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketStatsModel
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
abstract class _$$TicketStatsModelImplCopyWith<$Res>
    implements $TicketStatsModelCopyWith<$Res> {
  factory _$$TicketStatsModelImplCopyWith(
    _$TicketStatsModelImpl value,
    $Res Function(_$TicketStatsModelImpl) then,
  ) = __$$TicketStatsModelImplCopyWithImpl<$Res>;
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
class __$$TicketStatsModelImplCopyWithImpl<$Res>
    extends _$TicketStatsModelCopyWithImpl<$Res, _$TicketStatsModelImpl>
    implements _$$TicketStatsModelImplCopyWith<$Res> {
  __$$TicketStatsModelImplCopyWithImpl(
    _$TicketStatsModelImpl _value,
    $Res Function(_$TicketStatsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketStatsModel
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
      _$TicketStatsModelImpl(
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
class _$TicketStatsModelImpl implements _TicketStatsModel {
  const _$TicketStatsModelImpl({
    required this.total,
    required this.opened,
    required this.pending,
    required this.closed,
    required this.highPriority,
    required this.urgent,
  });

  factory _$TicketStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketStatsModelImplFromJson(json);

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
    return 'TicketStatsModel(total: $total, opened: $opened, pending: $pending, closed: $closed, highPriority: $highPriority, urgent: $urgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStatsModelImpl &&
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

  /// Create a copy of TicketStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStatsModelImplCopyWith<_$TicketStatsModelImpl> get copyWith =>
      __$$TicketStatsModelImplCopyWithImpl<_$TicketStatsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketStatsModelImplToJson(this);
  }
}

abstract class _TicketStatsModel implements TicketStatsModel {
  const factory _TicketStatsModel({
    required final int total,
    required final int opened,
    required final int pending,
    required final int closed,
    required final int highPriority,
    required final int urgent,
  }) = _$TicketStatsModelImpl;

  factory _TicketStatsModel.fromJson(Map<String, dynamic> json) =
      _$TicketStatsModelImpl.fromJson;

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

  /// Create a copy of TicketStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketStatsModelImplCopyWith<_$TicketStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
