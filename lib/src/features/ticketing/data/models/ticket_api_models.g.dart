// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketListResponseImpl _$$TicketListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TicketListResponseImpl(
  success: json['success'] as bool,
  data: TicketListData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TicketListResponseImplToJson(
  _$TicketListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_$TicketListDataImpl _$$TicketListDataImplFromJson(Map<String, dynamic> json) =>
    _$TicketListDataImpl(
      tickets: TicketGroups.fromJson(json['tickets'] as Map<String, dynamic>),
      allTickets:
          (json['allTickets'] as List<dynamic>?)
              ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      statistics: json['statistics'] == null
          ? null
          : TicketStatistics.fromJson(
              json['statistics'] as Map<String, dynamic>,
            ),
      pagination: TicketPagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
      filters: json['filters'] == null
          ? null
          : TicketFilters.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TicketListDataImplToJson(
  _$TicketListDataImpl instance,
) => <String, dynamic>{
  'tickets': instance.tickets,
  'allTickets': instance.allTickets,
  'statistics': instance.statistics,
  'pagination': instance.pagination,
  'filters': instance.filters,
};

_$TicketGroupsImpl _$$TicketGroupsImplFromJson(Map<String, dynamic> json) =>
    _$TicketGroupsImpl(
      opened:
          (json['opened'] as List<dynamic>?)
              ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pending:
          (json['pending'] as List<dynamic>?)
              ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      closed:
          (json['closed'] as List<dynamic>?)
              ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TicketGroupsImplToJson(_$TicketGroupsImpl instance) =>
    <String, dynamic>{
      'opened': instance.opened,
      'pending': instance.pending,
      'closed': instance.closed,
    };

_$TicketPaginationImpl _$$TicketPaginationImplFromJson(
  Map<String, dynamic> json,
) => _$TicketPaginationImpl(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  hasNext: json['hasNext'] as bool? ?? false,
  hasPrev: json['hasPrev'] as bool? ?? false,
);

Map<String, dynamic> _$$TicketPaginationImplToJson(
  _$TicketPaginationImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'pages': instance.pages,
  'limit': instance.limit,
  'hasNext': instance.hasNext,
  'hasPrev': instance.hasPrev,
};

_$TicketStatisticsImpl _$$TicketStatisticsImplFromJson(
  Map<String, dynamic> json,
) => _$TicketStatisticsImpl(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryCount.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  statuses:
      (json['statuses'] as List<dynamic>?)
          ?.map((e) => StatusCount.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$TicketStatisticsImplToJson(
  _$TicketStatisticsImpl instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'statuses': instance.statuses,
};

_$CategoryCountImpl _$$CategoryCountImplFromJson(Map<String, dynamic> json) =>
    _$CategoryCountImpl(
      category: json['category'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryCountImplToJson(_$CategoryCountImpl instance) =>
    <String, dynamic>{'category': instance.category, 'count': instance.count};

_$StatusCountImpl _$$StatusCountImplFromJson(Map<String, dynamic> json) =>
    _$StatusCountImpl(
      status: json['status'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$StatusCountImplToJson(_$StatusCountImpl instance) =>
    <String, dynamic>{'status': instance.status, 'count': instance.count};

_$TicketFiltersImpl _$$TicketFiltersImplFromJson(Map<String, dynamic> json) =>
    _$TicketFiltersImpl(
      category: json['category'] as String?,
      status: json['status'] as String?,
      priority: json['priority'] as String?,
      search: json['search'] as String?,
      sortBy: json['sortBy'] as String?,
      sortOrder: json['sortOrder'] as String?,
    );

Map<String, dynamic> _$$TicketFiltersImplToJson(_$TicketFiltersImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'status': instance.status,
      'priority': instance.priority,
      'search': instance.search,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$TicketStatsResponseImpl _$$TicketStatsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TicketStatsResponseImpl(
  success: json['success'] as bool,
  data: TicketStatsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TicketStatsResponseImplToJson(
  _$TicketStatsResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_$TicketStatsDataImpl _$$TicketStatsDataImplFromJson(
  Map<String, dynamic> json,
) => _$TicketStatsDataImpl(
  total: (json['total'] as num).toInt(),
  opened: (json['opened'] as num).toInt(),
  pending: (json['pending'] as num).toInt(),
  closed: (json['closed'] as num).toInt(),
  highPriority: (json['highPriority'] as num).toInt(),
  urgent: (json['urgent'] as num).toInt(),
);

Map<String, dynamic> _$$TicketStatsDataImplToJson(
  _$TicketStatsDataImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'opened': instance.opened,
  'pending': instance.pending,
  'closed': instance.closed,
  'highPriority': instance.highPriority,
  'urgent': instance.urgent,
};

_$TicketUpdateRequestImpl _$$TicketUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$TicketUpdateRequestImpl(
  status: json['status'] as String?,
  category: json['category'] as String?,
  priority: json['priority'] as String?,
  assignedTo: (json['assignedTo'] as num?)?.toInt(),
  adminNotes: json['adminNotes'] as String?,
);

Map<String, dynamic> _$$TicketUpdateRequestImplToJson(
  _$TicketUpdateRequestImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'category': instance.category,
  'priority': instance.priority,
  'assignedTo': instance.assignedTo,
  'adminNotes': instance.adminNotes,
};

_$TicketReplyRequestImpl _$$TicketReplyRequestImplFromJson(
  Map<String, dynamic> json,
) => _$TicketReplyRequestImpl(
  text: json['text'] as String,
  image: json['image'] as String?,
  from: json['from'] as String? ?? 'super_admin',
);

Map<String, dynamic> _$$TicketReplyRequestImplToJson(
  _$TicketReplyRequestImpl instance,
) => <String, dynamic>{
  'text': instance.text,
  'image': instance.image,
  'from': instance.from,
};
