// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketModelImpl _$$TicketModelImplFromJson(Map<String, dynamic> json) =>
    _$TicketModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      priority: json['priority'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      user: TicketUserModel.fromJson(json['user'] as Map<String, dynamic>),
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map(
                (e) =>
                    TicketAttachmentModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      replies:
          (json['replies'] as List<dynamic>?)
              ?.map((e) => TicketReplyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TicketModelImplToJson(_$TicketModelImpl instance) =>
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

_$TicketUserModelImpl _$$TicketUserModelImplFromJson(
  Map<String, dynamic> json,
) => _$TicketUserModelImpl(
  id: (json['id'] as num).toInt(),
  firstname: json['firstname'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
);

Map<String, dynamic> _$$TicketUserModelImplToJson(
  _$TicketUserModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstname': instance.firstname,
  'email': instance.email,
  'phone': instance.phone,
  'avatarUrl': instance.avatarUrl,
};

_$TicketAttachmentModelImpl _$$TicketAttachmentModelImplFromJson(
  Map<String, dynamic> json,
) => _$TicketAttachmentModelImpl(
  type: json['type'] as String,
  url: json['url'] as String,
  filename: json['filename'] as String?,
  fileSize: (json['fileSize'] as num?)?.toInt(),
);

Map<String, dynamic> _$$TicketAttachmentModelImplToJson(
  _$TicketAttachmentModelImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'url': instance.url,
  'filename': instance.filename,
  'fileSize': instance.fileSize,
};

_$TicketReplyModelImpl _$$TicketReplyModelImplFromJson(
  Map<String, dynamic> json,
) => _$TicketReplyModelImpl(
  from: json['from'] as String,
  text: json['text'] as String,
  image: json['image'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$TicketReplyModelImplToJson(
  _$TicketReplyModelImpl instance,
) => <String, dynamic>{
  'from': instance.from,
  'text': instance.text,
  'image': instance.image,
  'createdAt': instance.createdAt.toIso8601String(),
};

_$TicketPaginationModelImpl _$$TicketPaginationModelImplFromJson(
  Map<String, dynamic> json,
) => _$TicketPaginationModelImpl(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$$TicketPaginationModelImplToJson(
  _$TicketPaginationModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'pages': instance.pages,
  'limit': instance.limit,
};

_$TicketListModelImpl _$$TicketListModelImplFromJson(
  Map<String, dynamic> json,
) => _$TicketListModelImpl(
  tickets: (json['tickets'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
      k,
      (e as List<dynamic>)
          .map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  ),
  pagination: TicketPaginationModel.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$TicketListModelImplToJson(
  _$TicketListModelImpl instance,
) => <String, dynamic>{
  'tickets': instance.tickets,
  'pagination': instance.pagination,
};

_$TicketStatsModelImpl _$$TicketStatsModelImplFromJson(
  Map<String, dynamic> json,
) => _$TicketStatsModelImpl(
  total: (json['total'] as num).toInt(),
  opened: (json['opened'] as num).toInt(),
  pending: (json['pending'] as num).toInt(),
  closed: (json['closed'] as num).toInt(),
  highPriority: (json['highPriority'] as num).toInt(),
  urgent: (json['urgent'] as num).toInt(),
);

Map<String, dynamic> _$$TicketStatsModelImplToJson(
  _$TicketStatsModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'opened': instance.opened,
  'pending': instance.pending,
  'closed': instance.closed,
  'highPriority': instance.highPriority,
  'urgent': instance.urgent,
};
