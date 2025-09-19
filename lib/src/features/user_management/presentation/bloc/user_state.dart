import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/user_entity.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  
  const factory UserState.loading() = UserLoading;
  
  const factory UserState.loaded({
    required UserListEntity users,
    @Default(false) bool isRefreshing,
  }) = UserLoaded;
  
  const factory UserState.error({
    required Failure failure,
  }) = UserError;
  
  const factory UserState.statusUpdated({
    required UserEntity user,
  }) = UserStatusUpdated;
  
  const factory UserState.userDeleted({
    required String userId,
  }) = UserDeleted;
}
