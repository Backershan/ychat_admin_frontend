import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';
import 'package:y_chat_admin/src/core/services/token_storage_service.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class TicketRemoteDataSource {
  Future<TicketListResponse> getTickets({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  });

  Future<TicketListResponse> getTicketsByCategory({
    required String category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
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

  Future<TicketEntity> updateTicket({
    required int id,
    required TicketUpdateRequest request,
  });

  Future<TicketEntity> addReplyToTicket({
    required int id,
    required TicketReplyRequest request,
  });

  Future<TicketStatsResponse> getTicketStats();

  Future<void> deleteTicket(int id);

  // Legacy ticket endpoints (for backward compatibility)
  Future<TicketListResponse> getTicketsLegacy({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  });

  Future<TicketEntity> createTicketLegacy({
    required String title,
    required String description,
    required String priority,
    required int userId,
    List<TicketAttachmentEntity>? attachments,
  });

  Future<TicketEntity> updateTicketLegacy({
    required int id,
    required TicketUpdateRequest request,
  });

  Future<void> deleteTicketLegacy(int id);
}

class TicketRemoteDataSourceImpl implements TicketRemoteDataSource {
  final Dio _dio;

  TicketRemoteDataSourceImpl({
    required Dio dio,
  })  : _dio = dio;

  Future<Map<String, String>> _getHeaders() async {
    final tokenStorage = await TokenStorageService.getInstance();
    final accessToken = tokenStorage.getAccessToken();
    
    final headers = Map<String, String>.from(ApiConfig.defaultHeaders);
    if (accessToken != null) {
      headers['Authorization'] = 'Bearer $accessToken';
    }
    return headers;
  }

  @override
  Future<TicketListResponse> getTickets({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  }) async {
    try {
      final headers = await _getHeaders();
      final queryParams = <String, dynamic>{};
      if (category != null) queryParams['category'] = category;
      if (status != null) queryParams['status'] = status;
      if (priority != null) queryParams['priority'] = priority;
      if (search != null) queryParams['search'] = search;
      if (sortBy != null) queryParams['sortBy'] = sortBy;
      if (sortOrder != null) queryParams['sortOrder'] = sortOrder;
      if (page != null) queryParams['page'] = page;
      if (limit != null) queryParams['limit'] = limit;

      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketsEndpoint}',
        queryParameters: queryParams,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return TicketListResponse.fromJson(response.data);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to fetch tickets',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      // Handle server errors gracefully
      if (e.response?.statusCode == 500 || 
          e.response?.statusCode == 502 || 
          e.response?.statusCode == 503) {
        print('🔧 Tickets endpoint server error, returning empty list');
        return _getEmptyTicketsList();
      }
      
      // Handle connection errors gracefully
      if (e.type == DioExceptionType.connectionError || 
          e.type == DioExceptionType.connectionTimeout) {
        print('🔧 Connection error, returning empty tickets list');
        return _getEmptyTicketsList();
      }
      
      throw _handleDioException(e);
    } catch (e) {
      print('🔧 Tickets general error: $e');
      // Return empty tickets list for any other error
      return _getEmptyTicketsList();
    }
  }

  @override
  Future<TicketListResponse> getTicketsByCategory({
    required String category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'category': category,
      };
      if (status != null) queryParams['status'] = status;
      if (priority != null) queryParams['priority'] = priority;
      if (search != null) queryParams['search'] = search;
      if (sortBy != null) queryParams['sortBy'] = sortBy;
      if (sortOrder != null) queryParams['sortOrder'] = sortOrder;
      if (page != null) queryParams['page'] = page;
      if (limit != null) queryParams['limit'] = limit;

      final headers = await _getHeaders();
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketsByCategoryEndpoint}',
        queryParameters: queryParams,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return TicketListResponse.fromJson(response.data);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to fetch tickets by category',
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
      final headers = await _getHeaders();
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketByIdEndpoint}/$id',
        options: Options(headers: headers),
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

      final headers = await _getHeaders();
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.ticketsEndpoint}',
        data: data,
        options: Options(headers: headers),
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
  Future<TicketEntity> updateTicket({
    required int id,
    required TicketUpdateRequest request,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (request.status != null) data['status'] = request.status;
      if (request.category != null) data['category'] = request.category;
      if (request.priority != null) data['priority'] = request.priority;
      if (request.assignedTo != null) data['assigned_to'] = request.assignedTo;
      if (request.adminNotes != null) data['admin_notes'] = request.adminNotes;

      final headers = await _getHeaders();
      final response = await _dio.put(
        '${ApiConfig.baseUrl}${ApiConfig.ticketStatusUpdateEndpoint}/$id/status',
        data: data,
        options: Options(headers: headers),
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
    required TicketReplyRequest request,
  }) async {
    try {
      final data = {
        'text': request.text,
        'from': request.from,
        if (request.image != null) 'image': request.image,
      };

      final headers = await _getHeaders();
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.ticketRepliesEndpoint}/$id/replies',
        data: data,
        options: Options(headers: headers),
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
  Future<TicketStatsResponse> getTicketStats() async {
    try {
      final headers = await _getHeaders();
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketStatsEndpoint}',
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return TicketStatsResponse.fromJson(response.data);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to fetch ticket stats',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      // Handle server errors gracefully
      if (e.response?.statusCode == 500 || 
          e.response?.statusCode == 502 || 
          e.response?.statusCode == 503) {
        print('🔧 Ticket stats endpoint server error, returning empty stats');
        return _getEmptyTicketStats();
      }
      
      // Handle connection errors gracefully
      if (e.type == DioExceptionType.connectionError || 
          e.type == DioExceptionType.connectionTimeout) {
        print('🔧 Connection error, returning empty ticket stats');
        return _getEmptyTicketStats();
      }
      
      throw _handleDioException(e);
    } catch (e) {
      print('🔧 Ticket stats general error: $e');
      // Return empty stats for any other error
      return _getEmptyTicketStats();
    }
  }

  @override
  Future<void> deleteTicket(int id) async {
    try {
      final headers = await _getHeaders();
      final response = await _dio.delete(
        '${ApiConfig.baseUrl}${ApiConfig.ticketByIdEndpoint}/$id',
        options: Options(headers: headers),
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

  // Legacy ticket endpoints implementation
  @override
  Future<TicketListResponse> getTicketsLegacy({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (category != null) queryParams['category'] = category;
      if (status != null) queryParams['status'] = status;
      if (priority != null) queryParams['priority'] = priority;
      if (search != null) queryParams['search'] = search;
      if (sortBy != null) queryParams['sortBy'] = sortBy;
      if (sortOrder != null) queryParams['sortOrder'] = sortOrder;
      if (page != null) queryParams['page'] = page;
      if (limit != null) queryParams['limit'] = limit;

      final headers = await _getHeaders();
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.ticketEndpoint}',
        queryParameters: queryParams,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return TicketListResponse.fromJson(response.data);
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
  Future<TicketEntity> createTicketLegacy({
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

      final headers = await _getHeaders();
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.ticketEndpoint}',
        data: data,
        options: Options(headers: headers),
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
  Future<TicketEntity> updateTicketLegacy({
    required int id,
    required TicketUpdateRequest request,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (request.status != null) data['status'] = request.status;
      if (request.category != null) data['category'] = request.category;
      if (request.priority != null) data['priority'] = request.priority;
      if (request.assignedTo != null) data['assigned_to'] = request.assignedTo;
      if (request.adminNotes != null) data['admin_notes'] = request.adminNotes;

      final headers = await _getHeaders();
      final response = await _dio.put(
        '${ApiConfig.baseUrl}${ApiConfig.ticketEndpoint}',
        data: data,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return TicketEntity.fromJson(response.data['data']);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to update ticket',
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
  Future<void> deleteTicketLegacy(int id) async {
    try {
      final headers = await _getHeaders();
      final response = await _dio.delete(
        '${ApiConfig.baseUrl}${ApiConfig.ticketEndpoint}',
        options: Options(headers: headers),
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

  /// Return empty tickets list when endpoints are not available
  TicketListResponse _getEmptyTicketsList() {
    return TicketListResponse(
      success: true,
      data: TicketListData(
        tickets: const TicketGroups(
          opened: [],
          pending: [],
          closed: [],
        ),
        allTickets: const [],
        pagination: TicketPagination(
          total: 0,
          page: 1,
          pages: 0,
          limit: 20,
          hasNext: false,
          hasPrev: false,
        ),
      ),
    );
  }

  /// Return empty ticket stats when endpoint is not available
  TicketStatsResponse _getEmptyTicketStats() {
    return TicketStatsResponse(
      success: true,
      data: const TicketStatsData(
        total: 0,
        opened: 0,
        pending: 0,
        closed: 0,
        highPriority: 0,
        urgent: 0,
      ),
    );
  }
}
