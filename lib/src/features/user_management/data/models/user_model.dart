import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String firstname,
    required String email,
    required String status,
    String? lastname,
    String? phone,
    String? avatar,
    DateTime? lastLogin,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? banReason,
    String? banType,
    DateTime? bannedAt,
    String? deactivationReason,
    DateTime? deactivatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserListModel with _$UserListModel {
  const factory UserListModel({
    required List<UserModel> users,
    required UserPaginationModel pagination,
  }) = _UserListModel;

  factory UserListModel.fromJson(Map<String, dynamic> json) =>
      _$UserListModelFromJson(json);
}

@freezed
class UserPaginationModel with _$UserPaginationModel {
  const factory UserPaginationModel({
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _UserPaginationModel;

  factory UserPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$UserPaginationModelFromJson(json);
}

@freezed
class CreateUserRequestModel with _$CreateUserRequestModel {
  const factory CreateUserRequestModel({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? password,
    String? status,
  }) = _CreateUserRequestModel;

  factory CreateUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestModelFromJson(json);
}

@freezed
class UpdateUserRequestModel with _$UpdateUserRequestModel {
  const factory UpdateUserRequestModel({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? status,
  }) = _UpdateUserRequestModel;

  factory UpdateUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestModelFromJson(json);
}

@freezed
class UpdateUserStatusRequestModel with _$UpdateUserStatusRequestModel {
  const factory UpdateUserStatusRequestModel({
    required int userId,
    required String status,
  }) = _UpdateUserStatusRequestModel;

  factory UpdateUserStatusRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserStatusRequestModelFromJson(json);
}

@freezed
class BanUserRequestModel with _$BanUserRequestModel {
  const factory BanUserRequestModel({
    required String reason,
    required String banType,
  }) = _BanUserRequestModel;

  factory BanUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BanUserRequestModelFromJson(json);
}

@freezed
class DeactivateUserRequestModel with _$DeactivateUserRequestModel {
  const factory DeactivateUserRequestModel({
    required String reason,
  }) = _DeactivateUserRequestModel;

  factory DeactivateUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DeactivateUserRequestModelFromJson(json);
}

@freezed
class UserSearchParamsModel with _$UserSearchParamsModel {
  const factory UserSearchParamsModel({
    String? search,
    String? status,
    int? page,
    int? limit,
  }) = _UserSearchParamsModel;

  factory UserSearchParamsModel.fromJson(Map<String, dynamic> json) =>
      _$UserSearchParamsModelFromJson(json);
}

// Extensions to convert models to entities
extension UserModelExtension on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      firstname: firstname,
      email: email,
      status: status,
      lastname: lastname,
      phone: phone,
      avatar: avatar,
      lastLogin: lastLogin,
      createdAt: createdAt,
      updatedAt: updatedAt,
      banReason: banReason,
      banType: banType,
      bannedAt: bannedAt,
      deactivationReason: deactivationReason,
      deactivatedAt: deactivatedAt,
    );
  }
}

extension UserListModelExtension on UserListModel {
  UserListEntity toEntity() {
    return UserListEntity(
      users: users.map((user) => user.toEntity()).toList(),
      pagination: pagination.toEntity(),
    );
  }
}

extension UserPaginationModelExtension on UserPaginationModel {
  UserPaginationEntity toEntity() {
    return UserPaginationEntity(
      total: total,
      page: page,
      pages: pages,
      limit: limit,
    );
  }
}

extension CreateUserRequestModelExtension on CreateUserRequestModel {
  CreateUserRequest toEntity() {
    return CreateUserRequest(
      firstname: firstname,
      email: email,
      lastname: lastname,
      phone: phone,
      password: password,
      status: status,
    );
  }
}

extension UpdateUserRequestModelExtension on UpdateUserRequestModel {
  UpdateUserRequest toEntity() {
    return UpdateUserRequest(
      userId: userId,
      firstname: firstname,
      lastname: lastname,
      email: email,
      phone: phone,
      status: status,
    );
  }
}

extension UpdateUserStatusRequestModelExtension on UpdateUserStatusRequestModel {
  UpdateUserStatusRequest toEntity() {
    return UpdateUserStatusRequest(
      userId: userId,
      status: status,
    );
  }
}

extension BanUserRequestModelExtension on BanUserRequestModel {
  BanUserRequest toEntity() {
    return BanUserRequest(
      reason: reason,
      banType: banType,
    );
  }
}

extension DeactivateUserRequestModelExtension on DeactivateUserRequestModel {
  DeactivateUserRequest toEntity() {
    return DeactivateUserRequest(
      reason: reason,
    );
  }
}

extension UserSearchParamsModelExtension on UserSearchParamsModel {
  UserSearchParams toEntity() {
    return UserSearchParams(
      search: search,
      status: status,
      page: page,
      limit: limit,
    );
  }
}

// Extension methods to convert entities to models
extension CreateUserRequestExtension on CreateUserRequest {
  CreateUserRequestModel toModel() {
    return CreateUserRequestModel(
      firstname: firstname,
      email: email,
      lastname: lastname,
      phone: phone,
      password: password,
      status: status,
    );
  }
}

extension UpdateUserRequestExtension on UpdateUserRequest {
  UpdateUserRequestModel toModel() {
    return UpdateUserRequestModel(
      userId: userId,
      firstname: firstname,
      lastname: lastname,
      email: email,
      phone: phone,
      status: status,
    );
  }
}

extension UpdateUserStatusRequestExtension on UpdateUserStatusRequest {
  UpdateUserStatusRequestModel toModel() {
    return UpdateUserStatusRequestModel(
      userId: userId,
      status: status,
    );
  }
}

extension BanUserRequestExtension on BanUserRequest {
  BanUserRequestModel toModel() {
    return BanUserRequestModel(
      reason: reason,
      banType: banType,
    );
  }
}

extension DeactivateUserRequestExtension on DeactivateUserRequest {
  DeactivateUserRequestModel toModel() {
    return DeactivateUserRequestModel(
      reason: reason,
    );
  }
}