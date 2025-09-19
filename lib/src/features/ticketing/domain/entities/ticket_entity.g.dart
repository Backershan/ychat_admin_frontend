// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketEntityImpl _$$TicketEntityImplFromJson(Map<String, dynamic> json) =>
    _$TicketEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      priority: json['priority'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      user: TicketUserEntity.fromJson(json['user'] as Map<String, dynamic>),
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map(
                (e) =>
                    TicketAttachmentEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      replies:
          (json['replies'] as List<dynamic>?)
              ?.map(
                (e) => TicketReplyEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TicketEntityImplToJson(_$TicketEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'priority': instance.priority,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'user': instance.user,
      'attachments': instance.attachments,
      'replies': instance.replies,
    };

_$TicketUserEntityImpl _$$TicketUserEntityImplFromJson(
  Map<String, dynamic> json,
) => _$TicketUserEntityImpl(
  id: (json['id'] as num).toInt(),
  firstname: json['firstname'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
);

Map<String, dynamic> _$$TicketUserEntityImplToJson(
  _$TicketUserEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstname': instance.firstname,
  'email': instance.email,
  'phone': instance.phone,
  'avatarUrl': instance.avatarUrl,
};

_$TicketAttachmentEntityImpl _$$TicketAttachmentEntityImplFromJson(
  Map<String, dynamic> json,
) => _$TicketAttachmentEntityImpl(
  type: json['type'] as String,
  url: json['url'] as String,
  filename: json['filename'] as String?,
  fileSize: (json['fileSize'] as num?)?.toInt(),
);

Map<String, dynamic> _$$TicketAttachmentEntityImplToJson(
  _$TicketAttachmentEntityImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'url': instance.url,
  'filename': instance.filename,
  'fileSize': instance.fileSize,
};

_$TicketReplyEntityImpl _$$TicketReplyEntityImplFromJson(
  Map<String, dynamic> json,
) => _$TicketReplyEntityImpl(
  from: json['from'] as String,
  text: json['text'] as String,
  image: json['image'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$TicketReplyEntityImplToJson(
  _$TicketReplyEntityImpl instance,
) => <String, dynamic>{
  'from': instance.from,
  'text': instance.text,
  'image': instance.image,
  'createdAt': instance.createdAt.toIso8601String(),
};

_$TicketPaginationEntityImpl _$$TicketPaginationEntityImplFromJson(
  Map<String, dynamic> json,
) => _$TicketPaginationEntityImpl(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$$TicketPaginationEntityImplToJson(
  _$TicketPaginationEntityImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'pages': instance.pages,
  'limit': instance.limit,
};

_$TicketListEntityImpl _$$TicketListEntityImplFromJson(
  Map<String, dynamic> json,
) => _$TicketListEntityImpl(
  tickets: (json['tickets'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
      k,
      (e as List<dynamic>)
          .map((e) => TicketEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  ),
  pagination: TicketPaginationEntity.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$TicketListEntityImplToJson(
  _$TicketListEntityImpl instance,
) => <String, dynamic>{
  'tickets': instance.tickets,
  'pagination': instance.pagination,
};

_$TicketStatsEntityImpl _$$TicketStatsEntityImplFromJson(
  Map<String, dynamic> json,
) => _$TicketStatsEntityImpl(
  total: (json['total'] as num).toInt(),
  opened: (json['opened'] as num).toInt(),
  pending: (json['pending'] as num).toInt(),
  closed: (json['closed'] as num).toInt(),
  highPriority: (json['highPriority'] as num).toInt(),
  urgent: (json['urgent'] as num).toInt(),
);

Map<String, dynamic> _$$TicketStatsEntityImplToJson(
  _$TicketStatsEntityImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'opened': instance.opened,
  'pending': instance.pending,
  'closed': instance.closed,
  'highPriority': instance.highPriority,
  'urgent': instance.urgent,
};
