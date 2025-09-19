import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';
import 'package:y_chat_admin/src/core/services/auth_service.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class TicketRemoteDataSource {
  Future<TicketListEntity> getTickets({
    String? category,
    String? status,
    String? priority,
    int? page,
    int? limit,
  });

  Future<TicketEntity> getTicketById(int id);

  Future<TicketEntity> createTicket({
    required String title,
    required String description,
    required String priority,
    required int userId,
    List<TicketAttachmentEntity>? attachments,
  });

  Future<TicketEntity> updateTicketStatus({
    required int id,
    required String status,
    int? assignedTo,
    String? adminNotes,
  });

  Future<TicketEntity> addReplyToTicket({
    required int id,
    required String text,
    String? image,
    required String from,
  });

  Future<TicketStatsEntity> getTicketStats();

  Future<void> deleteTicket(int id);
}

class TicketRemoteDataSourceImpl implements TicketRemoteDataSource {
  final Dio _dio;
  final AuthService _authService;

  TicketRemoteDataSourceImpl({
    required Dio dio,
    required AuthService authService,
  })  : _dio = dio,
        _authService = authService;

  Map<String, String> get _headers {
    final token = _authService.accessToken;
    return {
      ...ApiConfig.defaultHeaders,
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  @override
  Future<TicketListEntity> getTickets({
    String? category,
    String? status,
    String? priority,
    int? page,
    int? limit,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (category != null) queryParams['category'] = category;
      if (status != null) queryParams['status'] = status;
      if (priority != null) queryParams['priority'] = priority;
      if (page != null) queryParams['page'] = page;
      if (limit != null) queryParams['limit'] = limit;

      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketsEndpoint}',
        queryParameters: queryParams,
        options: Options(headers: _headers),
      );

      if (response.statusCode == 200) {
        return TicketListEntity.fromJson(response.data['data']);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to fetch tickets',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<TicketEntity> getTicketById(int id) async {
    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketByIdEndpoint}/$id',
        options: Options(headers: _headers),
      );

      if (response.statusCode == 200) {
        return TicketEntity.fromJson(response.data['data']);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to fetch ticket',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<TicketEntity> createTicket({
    required String title,
    required String description,
    required String priority,
    required int userId,
    List<TicketAttachmentEntity>? attachments,
  }) async {
    try {
      final data = {
        'title': title,
        'description': description,
        'priority': priority,
        'user_id': userId,
        if (attachments != null)
          'attachments': attachments
              .map((attachment) => {
                    'type': attachment.type,
                    'url': attachment.url,
                    if (attachment.filename != null) 'filename': attachment.filename,
                    if (attachment.fileSize != null) 'file_size': attachment.fileSize,
                  })
              .toList(),
      };

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.ticketsEndpoint}',
        data: data,
        options: Options(headers: _headers),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return TicketEntity.fromJson(response.data['data']);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to create ticket',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<TicketEntity> updateTicketStatus({
    required int id,
    required String status,
    int? assignedTo,
    String? adminNotes,
  }) async {
    try {
      final data = {
        'status': status,
        if (assignedTo != null) 'assigned_to': assignedTo,
        if (adminNotes != null) 'admin_notes': adminNotes,
      };

      final response = await _dio.put(
        '${ApiConfig.baseUrl}${ApiConfig.ticketStatusEndpoint}/$id/status',
        data: data,
        options: Options(headers: _headers),
      );

      if (response.statusCode == 200) {
        return TicketEntity.fromJson(response.data['data']);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to update ticket status',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<TicketEntity> addReplyToTicket({
    required int id,
    required String text,
    String? image,
    required String from,
  }) async {
    try {
      final data = {
        'text': text,
        'from': from,
        if (image != null) 'image': image,
      };

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.ticketRepliesEndpoint}/$id/replies',
        data: data,
        options: Options(headers: _headers),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return TicketEntity.fromJson(response.data['data']);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to add reply',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<TicketStatsEntity> getTicketStats() async {
    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketStatsEndpoint}',
        options: Options(headers: _headers),
      );

      if (response.statusCode == 200) {
        return TicketStatsEntity.fromJson(response.data['data']);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to fetch ticket stats',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<void> deleteTicket(int id) async {
    try {
      final response = await _dio.delete(
        '${ApiConfig.baseUrl}${ApiConfig.ticketByIdEndpoint}/$id',
        options: Options(headers: _headers),
      );

      if (response.statusCode != 200 && response.statusCode != 204) {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to delete ticket',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  Failure _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutFailure(message: 'Request timeout');
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final responseData = e.response?.data;
        String message = 'Server error';
        
        if (responseData is Map<String, dynamic>) {
          message = responseData['message'] ?? 
                   responseData['error'] ?? 
                   responseData['detail'] ?? 
                   'Server error';
        } else if (responseData is String) {
          message = responseData;
        }
        
        message = '$message (Status: $statusCode)';
        
        switch (statusCode) {
          case 401:
            return UnauthorizedFailure(message: message);
          case 403:
            return ForbiddenFailure(message: message);
          case 404:
            return NotFoundFailure(message: message);
          case 422:
            return ValidationFailure(message: message);
          case 500:
            return ServerFailure(
              message: 'Internal server error: $message',
              statusCode: statusCode,
            );
          default:
            return ServerFailure(
              message: message,
              statusCode: statusCode,
            );
        }
      case DioExceptionType.cancel:
        return UnknownFailure(message: 'Request cancelled');
      case DioExceptionType.connectionError:
        return NetworkFailure(
          message: 'Cannot connect to backend server. Please check:\n'
              '1. Backend server is running\n'
              '2. Correct port (trying: ${ApiConfig.baseUrl})\n'
              '3. Network connection\n'
              '4. Firewall settings'
        );
      default:
        return UnknownFailure(message: 'Network error: ${e.message}');
    }
  }
}
