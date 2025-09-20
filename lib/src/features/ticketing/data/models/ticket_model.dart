import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';


@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required int id,
    required String title,
    required String description,
    required String status,
    required String priority,
    required DateTime createdAt,
    required DateTime updatedAt,
    required TicketUserModel user,
    @Default([]) List<TicketAttachmentModel> attachments,
    @Default([]) List<TicketReplyModel> replies,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  factory TicketModel.fromEntity(TicketEntity entity) => TicketModel(
        id: entity.id,
        title: entity.title,
        description: entity.description,
        status: entity.status,
        priority: entity.priority,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        user: TicketUserModel.fromEntity(entity.user),
        attachments: entity.attachments
            .map((attachment) => TicketAttachmentModel.fromEntity(attachment))
            .toList(),
        replies: entity.replies
            .map((reply) => TicketReplyModel.fromEntity(reply))
            .toList(),
      );
}

@freezed
class TicketUserModel with _$TicketUserModel {
  const factory TicketUserModel({
    required int id,
    required String firstname,
    required String email,
    String? phone,
    String? avatarUrl,
  }) = _TicketUserModel;

  factory TicketUserModel.fromJson(Map<String, dynamic> json) =>
      _$TicketUserModelFromJson(json);

  factory TicketUserModel.fromEntity(TicketUserEntity entity) => TicketUserModel(
        id: entity.id,
        firstname: entity.firstname,
        email: entity.email,
        phone: entity.phone,
        avatarUrl: entity.avatarUrl,
      );
}

@freezed
class TicketAttachmentModel with _$TicketAttachmentModel {
  const factory TicketAttachmentModel({
    required String type,
    required String url,
    String? filename,
    int? fileSize,
  }) = _TicketAttachmentModel;

  factory TicketAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$TicketAttachmentModelFromJson(json);

  factory TicketAttachmentModel.fromEntity(TicketAttachmentEntity entity) =>
      TicketAttachmentModel(
        type: entity.type,
        url: entity.url,
        filename: entity.filename,
        fileSize: entity.fileSize,
      );
}

@freezed
class TicketReplyModel with _$TicketReplyModel {
  const factory TicketReplyModel({
    required String from,
    required String text,
    String? image,
    required DateTime createdAt,
  }) = _TicketReplyModel;

  factory TicketReplyModel.fromJson(Map<String, dynamic> json) =>
      _$TicketReplyModelFromJson(json);

  factory TicketReplyModel.fromEntity(TicketReplyEntity entity) =>
      TicketReplyModel(
        from: entity.from,
        text: entity.text,
        image: entity.image,
        createdAt: entity.createdAt,
      );
}

@freezed
class TicketPaginationModel with _$TicketPaginationModel {
  const factory TicketPaginationModel({
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _TicketPaginationModel;

  factory TicketPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$TicketPaginationModelFromJson(json);

  factory TicketPaginationModel.fromEntity(TicketPaginationEntity entity) =>
      TicketPaginationModel(
        total: entity.total,
        page: entity.page,
        pages: entity.pages,
        limit: entity.limit,
      );
}

@freezed
class TicketListModel with _$TicketListModel {
  const factory TicketListModel({
    required Map<String, List<TicketModel>> tickets,
    required TicketPaginationModel pagination,
  }) = _TicketListModel;

  factory TicketListModel.fromJson(Map<String, dynamic> json) =>
      _$TicketListModelFromJson(json);

  factory TicketListModel.fromEntity(TicketListEntity entity) => TicketListModel(
        tickets: entity.tickets.map(
          (key, value) => MapEntry(
            key,
            value.map((ticket) => TicketModel.fromEntity(ticket)).toList(),
          ),
        ),
        pagination: TicketPaginationModel.fromEntity(entity.pagination),
      );
}

@freezed
class TicketStatsModel with _$TicketStatsModel {
  const factory TicketStatsModel({
    required int total,
    required int opened,
    required int pending,
    required int closed,
    required int highPriority,
    required int urgent,
  }) = _TicketStatsModel;

  factory TicketStatsModel.fromJson(Map<String, dynamic> json) =>
      _$TicketStatsModelFromJson(json);

  factory TicketStatsModel.fromEntity(TicketStatsEntity entity) =>
      TicketStatsModel(
        total: entity.total,
        opened: entity.opened,
        pending: entity.pending,
        closed: entity.closed,
        highPriority: entity.highPriority,
        urgent: entity.urgent,
      );
}
