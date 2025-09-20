import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;

  const factory UserState.loading() = UserLoading;

  const factory UserState.loaded({
    required UserListResponse userListResponse,
    required List<UserEntity> users,
    required int currentPage,
    required int totalPages,
    required int totalUsers,
    String? searchQuery,
    String? statusFilter,
  }) = UserLoaded;

  const factory UserState.error({
    required String message,
  }) = UserError;

  const factory UserState.actionSuccess({
    required String message,
    UserEntity? updatedUser,
  }) = UserActionSuccess;

  const factory UserState.actionLoading() = UserActionLoading;
}