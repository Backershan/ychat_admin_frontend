import 'package:equatable/equatable.dart';
import '../../domain/entities/user_entity.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UsersLoaded extends UserState {
  final UserListEntity users;

  const UsersLoaded(this.users);

  @override
  List<Object> get props => [users];
}

class UserCreated extends UserState {
  final UserEntity user;

  const UserCreated(this.user);

  @override
  List<Object> get props => [user];
}

class UserUpdated extends UserState {
  final UserEntity user;

  const UserUpdated(this.user);

  @override
  List<Object> get props => [user];
}

class UserDeleted extends UserState {
  final int userId;

  const UserDeleted(this.userId);

  @override
  List<Object> get props => [userId];
}

class UserStatusUpdated extends UserState {
  final int userId;
  final String status;

  const UserStatusUpdated({
    required this.userId,
    required this.status,
  });

  @override
  List<Object> get props => [userId, status];
}

class UserBanned extends UserState {
  final int userId;

  const UserBanned(this.userId);

  @override
  List<Object> get props => [userId];
}

class UserUnbanned extends UserState {
  final int userId;

  const UserUnbanned(this.userId);

  @override
  List<Object> get props => [userId];
}

class UserActivated extends UserState {
  final int userId;

  const UserActivated(this.userId);

  @override
  List<Object> get props => [userId];
}

class UserDeactivated extends UserState {
  final int userId;

  const UserDeactivated(this.userId);

  @override
  List<Object> get props => [userId];
}

class UserError extends UserState {
  final String message;

  const UserError(this.message);

  @override
  List<Object> get props => [message];
}