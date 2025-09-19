import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_entity.freezed.dart';
part 'ticket_entity.g.dart';

@freezed
class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    required int id,
    required String title,
    required String description,
    required String status,
    required String priority,
    required DateTime createdAt,
    required DateTime updatedAt,
    required TicketUserEntity user,
    @Default([]) List<TicketAttachmentEntity> attachments,
    @Default([]) List<TicketReplyEntity> replies,
  }) = _TicketEntity;

  factory TicketEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketEntityFromJson(json);
}

@freezed
class TicketUserEntity with _$TicketUserEntity {
  const factory TicketUserEntity({
    required int id,
    required String firstname,
    required String email,
    String? phone,
    String? avatarUrl,
  }) = _TicketUserEntity;

  factory TicketUserEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketUserEntityFromJson(json);
}

@freezed
class TicketAttachmentEntity with _$TicketAttachmentEntity {
  const factory TicketAttachmentEntity({
    required String type,
    required String url,
    String? filename,
    int? fileSize,
  }) = _TicketAttachmentEntity;

  factory TicketAttachmentEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketAttachmentEntityFromJson(json);
}

@freezed
class TicketReplyEntity with _$TicketReplyEntity {
  const factory TicketReplyEntity({
    required String from,
    required String text,
    String? image,
    required DateTime createdAt,
  }) = _TicketReplyEntity;

  factory TicketReplyEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketReplyEntityFromJson(json);
}

@freezed
class TicketPaginationEntity with _$TicketPaginationEntity {
  const factory TicketPaginationEntity({
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _TicketPaginationEntity;

  factory TicketPaginationEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketPaginationEntityFromJson(json);
}

@freezed
class TicketListEntity with _$TicketListEntity {
  const factory TicketListEntity({
    required Map<String, List<TicketEntity>> tickets,
    required TicketPaginationEntity pagination,
  }) = _TicketListEntity;

  factory TicketListEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketListEntityFromJson(json);
}

@freezed
class TicketStatsEntity with _$TicketStatsEntity {
  const factory TicketStatsEntity({
    required int total,
    required int opened,
    required int pending,
    required int closed,
    required int highPriority,
    required int urgent,
  }) = _TicketStatsEntity;

  factory TicketStatsEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketStatsEntityFromJson(json);
}
