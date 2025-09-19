import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUsers({
    @Default(1) int page,
    @Default(20) int limit,
    String? search,
    UserStatus? status,
  }) = GetUsers;

  const factory UserEvent.refreshUsers() = RefreshUsers;

  const factory UserEvent.updateUserStatus({
    required String userId,
    required UserStatus status,
  }) = UpdateUserStatus;

  const factory UserEvent.deleteUser({
    required String userId,
  }) = DeleteUser;

  const factory UserEvent.searchUsers({
    required String query,
  }) = SearchUsers;

  const factory UserEvent.filterUsersByStatus({
    UserStatus? status,
  }) = FilterUsersByStatus;
}
