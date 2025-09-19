import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetUsers extends UserEvent {
  final String? search;
  final String? status;
  final int? page;
  final int? limit;

  const GetUsers({
    this.search,
    this.status,
    this.page,
    this.limit,
  });

  @override
  List<Object> get props => [search ?? '', status ?? '', page ?? 1, limit ?? 20];
}

class CreateUser extends UserEvent {
  final String firstname;
  final String email;
  final String? lastname;
  final String? phone;
  final String? password;
  final String? status;

  const CreateUser({
    required this.firstname,
    required this.email,
    this.lastname,
    this.phone,
    this.password,
    this.status,
  });

  @override
  List<Object> get props => [firstname, email, lastname ?? '', phone ?? '', password ?? '', status ?? ''];
}

class UpdateUser extends UserEvent {
  final int userId;
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? phone;
  final String? status;

  const UpdateUser({
    required this.userId,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.status,
  });

  @override
  List<Object> get props => [userId, firstname ?? '', lastname ?? '', email ?? '', phone ?? '', status ?? ''];
}

class DeleteUser extends UserEvent {
  final int userId;

  const DeleteUser(this.userId);

  @override
  List<Object> get props => [userId];
}

class UpdateUserStatus extends UserEvent {
  final int userId;
  final String status;

  const UpdateUserStatus({
    required this.userId,
    required this.status,
  });

  @override
  List<Object> get props => [userId, status];
}

class BanUser extends UserEvent {
  final int userId;
  final String reason;
  final String banType;

  const BanUser({
    required this.userId,
    required this.reason,
    required this.banType,
  });

  @override
  List<Object> get props => [userId, reason, banType];
}

class UnbanUser extends UserEvent {
  final int userId;

  const UnbanUser(this.userId);

  @override
  List<Object> get props => [userId];
}

class ActivateUser extends UserEvent {
  final int userId;

  const ActivateUser(this.userId);

  @override
  List<Object> get props => [userId];
}

class DeactivateUser extends UserEvent {
  final int userId;
  final String reason;

  const DeactivateUser({
    required this.userId,
    required this.reason,
  });

  @override
  List<Object> get props => [userId, reason];
}

class RefreshUsers extends UserEvent {
  const RefreshUsers();
}