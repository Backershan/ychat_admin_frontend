import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_model.dart';

part 'ticket_api_models.freezed.dart';
part 'ticket_api_models.g.dart';

// API Response Models
@freezed
class TicketListResponse with _$TicketListResponse {
  const factory TicketListResponse({
    required bool success,
    required TicketListData data,
  }) = _TicketListResponse;

  factory TicketListResponse.fromJson(Map<String, dynamic> json) =>
      _$TicketListResponseFromJson(json);
}

@freezed
class TicketListData with _$TicketListData {
  const factory TicketListData({
    required TicketGroups tickets,
    @Default([]) List<TicketModel> allTickets,
    TicketStatistics? statistics,
    required TicketPagination pagination,
    TicketFilters? filters,
  }) = _TicketListData;

  factory TicketListData.fromJson(Map<String, dynamic> json) =>
      _$TicketListDataFromJson(json);
}

@freezed
class TicketGroups with _$TicketGroups {
  const factory TicketGroups({
    @Default([]) List<TicketModel> opened,
    @Default([]) List<TicketModel> pending,
    @Default([]) List<TicketModel> closed,
  }) = _TicketGroups;

  factory TicketGroups.fromJson(Map<String, dynamic> json) =>
      _$TicketGroupsFromJson(json);
}

@freezed
class TicketPagination with _$TicketPagination {
  const factory TicketPagination({
    required int total,
    required int page,
    required int pages,
    required int limit,
    @Default(false) bool hasNext,
    @Default(false) bool hasPrev,
  }) = _TicketPagination;

  factory TicketPagination.fromJson(Map<String, dynamic> json) =>
      _$TicketPaginationFromJson(json);
}

@freezed
class TicketStatistics with _$TicketStatistics {
  const factory TicketStatistics({
    @Default([]) List<CategoryCount> categories,
    @Default([]) List<StatusCount> statuses,
  }) = _TicketStatistics;

  factory TicketStatistics.fromJson(Map<String, dynamic> json) =>
      _$TicketStatisticsFromJson(json);
}

@freezed
class CategoryCount with _$CategoryCount {
  const factory CategoryCount({
    required String category,
    required int count,
  }) = _CategoryCount;

  factory CategoryCount.fromJson(Map<String, dynamic> json) =>
      _$CategoryCountFromJson(json);
}

@freezed
class StatusCount with _$StatusCount {
  const factory StatusCount({
    required String status,
    required int count,
  }) = _StatusCount;

  factory StatusCount.fromJson(Map<String, dynamic> json) =>
      _$StatusCountFromJson(json);
}

@freezed
class TicketFilters with _$TicketFilters {
  const factory TicketFilters({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
  }) = _TicketFilters;

  factory TicketFilters.fromJson(Map<String, dynamic> json) =>
      _$TicketFiltersFromJson(json);
}

@freezed
class TicketStatsResponse with _$TicketStatsResponse {
  const factory TicketStatsResponse({
    required bool success,
    required TicketStatsData data,
  }) = _TicketStatsResponse;

  factory TicketStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$TicketStatsResponseFromJson(json);
}

@freezed
class TicketStatsData with _$TicketStatsData {
  const factory TicketStatsData({
    required int total,
    required int opened,
    required int pending,
    required int closed,
    required int highPriority,
    required int urgent,
  }) = _TicketStatsData;

  factory TicketStatsData.fromJson(Map<String, dynamic> json) =>
      _$TicketStatsDataFromJson(json);
}

@freezed
class TicketUpdateRequest with _$TicketUpdateRequest {
  const factory TicketUpdateRequest({
    String? status,
    String? category,
    String? priority,
    int? assignedTo,
    String? adminNotes,
  }) = _TicketUpdateRequest;

  factory TicketUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketUpdateRequestFromJson(json);
}

@freezed
class TicketReplyRequest with _$TicketReplyRequest {
  const factory TicketReplyRequest({
    required String text,
    String? image,
    @Default('super_admin') String from,
  }) = _TicketReplyRequest;

  factory TicketReplyRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketReplyRequestFromJson(json);
}
