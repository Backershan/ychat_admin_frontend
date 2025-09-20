import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/activate_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/ban_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/create_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/deactivate_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/delete_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/get_users_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/unban_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/update_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/update_user_status_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_event.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_state.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCase _getUsersUseCase;
  final CreateUserUseCase _createUserUseCase;
  final UpdateUserUseCase _updateUserUseCase;
  final DeleteUserUseCase _deleteUserUseCase;
  final UpdateUserStatusUseCase _updateUserStatusUseCase;
  final BanUserUseCase _banUserUseCase;
  final UnbanUserUseCase _unbanUserUseCase;
  final ActivateUserUseCase _activateUserUseCase;
  final DeactivateUserUseCase _deactivateUserUseCase;

  UserBloc(
    this._getUsersUseCase,
    this._createUserUseCase,
    this._updateUserUseCase,
    this._deleteUserUseCase,
    this._updateUserStatusUseCase,
    this._banUserUseCase,
    this._unbanUserUseCase,
    this._activateUserUseCase,
    this._deactivateUserUseCase,
  ) : super(const UserState.initial()) {
    on<GetUsersEvent>(_onGetUsers);
    on<CreateUserEvent>(_onCreateUser);
    on<UpdateUserEvent>(_onUpdateUser);
    on<DeleteUserEvent>(_onDeleteUser);
    on<UpdateUserStatusEvent>(_onUpdateUserStatus);
    on<BanUserEvent>(_onBanUser);
    on<UnbanUserEvent>(_onUnbanUser);
    on<ActivateUserEvent>(_onActivateUser);
    on<DeactivateUserEvent>(_onDeactivateUser);
    on<ClearUserErrorEvent>(_onClearError);
  }

  Future<void> _onGetUsers(GetUsersEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await _getUsersUseCase(
      search: event.search,
      status: event.status,
      page: event.page,
      limit: event.limit,
    );

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (userListResponse) => emit(UserState.loaded(
        userListResponse: userListResponse,
        users: userListResponse.data.users,
        currentPage: userListResponse.data.pagination.page,
        totalPages: userListResponse.data.pagination.pages,
        totalUsers: userListResponse.data.pagination.total,
        searchQuery: event.search,
        statusFilter: event.status,
      )),
    );
  }

  Future<void> _onCreateUser(CreateUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _createUserUseCase(
      firstname: event.firstname,
      email: event.email,
      lastname: event.lastname,
      phone: event.phone,
      role: event.role,
    );

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(
        message: response.message,
        updatedUser: response.data,
      )),
    );
  }

  Future<void> _onUpdateUser(UpdateUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _updateUserUseCase(
      userId: event.userId,
      firstname: event.firstname,
      lastname: event.lastname,
      email: event.email,
      phone: event.phone,
      role: event.role,
    );

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(
        message: response.message,
        updatedUser: response.data,
      )),
    );
  }

  Future<void> _onDeleteUser(DeleteUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _deleteUserUseCase(event.userId);

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(message: response.message)),
    );
  }

  Future<void> _onUpdateUserStatus(UpdateUserStatusEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _updateUserStatusUseCase(
      userId: event.userId,
      status: event.status,
    );

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(
        message: response.message,
        updatedUser: response.data,
      )),
    );
  }

  Future<void> _onBanUser(BanUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _banUserUseCase(
      userId: event.userId,
      reason: event.reason,
      banType: event.banType,
    );

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(
        message: response.message,
        updatedUser: response.data,
      )),
    );
  }

  Future<void> _onUnbanUser(UnbanUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _unbanUserUseCase(event.userId);

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(
        message: response.message,
        updatedUser: response.data,
      )),
    );
  }

  Future<void> _onActivateUser(ActivateUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _activateUserUseCase(event.userId);

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(
        message: response.message,
        updatedUser: response.data,
      )),
    );
  }

  Future<void> _onDeactivateUser(DeactivateUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.actionLoading());

    final result = await _deactivateUserUseCase(
      userId: event.userId,
      reason: event.reason,
    );

    result.fold(
      (failure) => emit(UserState.error(message: _getErrorMessage(failure))),
      (response) => emit(UserState.actionSuccess(
        message: response.message,
        updatedUser: response.data,
      )),
    );
  }

  void _onClearError(ClearUserErrorEvent event, Emitter<UserState> emit) {
    emit(const UserState.initial());
  }

  String _getErrorMessage(Failure failure) {
    return failure.when(
      network: (message) => 'Network error: $message',
      server: (message, statusCode, errorCode) => 'Server error: $message',
      unauthorized: (message) => 'Unauthorized: $message',
      notFound: (message) => 'Not found: $message',
      validation: (message, errors) => 'Validation error: $message',
      unknown: (message, originalError) => 'Unknown error: $message',
      cache: (message) => 'Cache error: $message',
      forbidden: (message) => 'Forbidden: $message',
      timeout: (message) => 'Timeout: $message',
    );
  }
}