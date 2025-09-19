import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/usecases/get_users_usecase.dart';
import '../../domain/usecases/update_user_status_usecase.dart';
import '../../domain/usecases/delete_user_usecase.dart';
import 'user_event.dart';
import 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCase _getUsersUseCase;
  final UpdateUserStatusUseCase _updateUserStatusUseCase;
  final DeleteUserUseCase _deleteUserUseCase;

  UserBloc({
    required GetUsersUseCase getUsersUseCase,
    required UpdateUserStatusUseCase updateUserStatusUseCase,
    required DeleteUserUseCase deleteUserUseCase,
  })  : _getUsersUseCase = getUsersUseCase,
        _updateUserStatusUseCase = updateUserStatusUseCase,
        _deleteUserUseCase = deleteUserUseCase,
        super(const UserState.initial()) {
    on<GetUsers>(_onGetUsers);
    on<RefreshUsers>(_onRefreshUsers);
    on<UpdateUserStatus>(_onUpdateUserStatus);
    on<DeleteUser>(_onDeleteUser);
    on<SearchUsers>(_onSearchUsers);
    on<FilterUsersByStatus>(_onFilterUsersByStatus);
  }

  Future<void> _onGetUsers(
    GetUsers event,
    Emitter<UserState> emit,
  ) async {
    print('🔧 UserBloc: _onGetUsers called with event: $event');
    emit(const UserState.loading());

    try {
      final result = await _getUsersUseCase(
        page: event.page,
        limit: event.limit,
        search: event.search,
        status: event.status,
      );

      print('🔧 UserBloc: GetUsersUseCase result: $result');

      result.fold(
        (failure) {
          print('🔧 UserBloc: GetUsers failed with: ${failure.message}');
          emit(UserState.error(failure: failure));
        },
        (users) {
          print('🔧 UserBloc: GetUsers successful, loaded ${users.users.length} users');
          emit(UserState.loaded(users: users));
        },
      );
    } catch (e) {
      print('🔧 UserBloc: GetUsers exception: $e');
      emit(UserState.error(failure: UnknownFailure('An unexpected error occurred: $e')));
    }
  }

  Future<void> _onRefreshUsers(
    RefreshUsers event,
    Emitter<UserState> emit,
  ) async {
    print('🔧 UserBloc: _onRefreshUsers called');
    
    final currentState = state;
    if (currentState is UserLoaded) {
      emit(currentState.copyWith(isRefreshing: true));
    } else {
      emit(const UserState.loading());
    }

    try {
      final result = await _getUsersUseCase();

      result.fold(
        (failure) {
          print('🔧 UserBloc: RefreshUsers failed with: ${failure.message}');
          emit(UserState.error(failure: failure));
        },
        (users) {
          print('🔧 UserBloc: RefreshUsers successful, loaded ${users.users.length} users');
          emit(UserState.loaded(users: users));
        },
      );
    } catch (e) {
      print('🔧 UserBloc: RefreshUsers exception: $e');
      emit(UserState.error(failure: UnknownFailure('An unexpected error occurred: $e')));
    }
  }

  Future<void> _onUpdateUserStatus(
    UpdateUserStatus event,
    Emitter<UserState> emit,
  ) async {
    print('🔧 UserBloc: _onUpdateUserStatus called with event: $event');

    try {
      final result = await _updateUserStatusUseCase(
        userId: event.userId,
        status: event.status,
      );

      print('🔧 UserBloc: UpdateUserStatusUseCase result: $result');

      result.fold(
        (failure) {
          print('🔧 UserBloc: UpdateUserStatus failed with: ${failure.message}');
          emit(UserState.error(failure: failure));
        },
        (user) {
          print('🔧 UserBloc: UpdateUserStatus successful, updated user: $user');
          emit(UserState.statusUpdated(user: user));
          
          // Refresh the users list
          add(const RefreshUsers());
        },
      );
    } catch (e) {
      print('🔧 UserBloc: UpdateUserStatus exception: $e');
      emit(UserState.error(failure: UnknownFailure('An unexpected error occurred: $e')));
    }
  }

  Future<void> _onDeleteUser(
    DeleteUser event,
    Emitter<UserState> emit,
  ) async {
    print('🔧 UserBloc: _onDeleteUser called with event: $event');

    try {
      final result = await _deleteUserUseCase(userId: event.userId);

      print('🔧 UserBloc: DeleteUserUseCase result: $result');

      result.fold(
        (failure) {
          print('🔧 UserBloc: DeleteUser failed with: ${failure.message}');
          emit(UserState.error(failure: failure));
        },
        (_) {
          print('🔧 UserBloc: DeleteUser successful, deleted user: ${event.userId}');
          emit(UserState.userDeleted(userId: event.userId));
          
          // Refresh the users list
          add(const RefreshUsers());
        },
      );
    } catch (e) {
      print('🔧 UserBloc: DeleteUser exception: $e');
      emit(UserState.error(failure: UnknownFailure('An unexpected error occurred: $e')));
    }
  }

  Future<void> _onSearchUsers(
    SearchUsers event,
    Emitter<UserState> emit,
  ) async {
    print('🔧 UserBloc: _onSearchUsers called with query: ${event.query}');
    
    add(GetUsers(search: event.query));
  }

  Future<void> _onFilterUsersByStatus(
    FilterUsersByStatus event,
    Emitter<UserState> emit,
  ) async {
    print('🔧 UserBloc: _onFilterUsersByStatus called with status: ${event.status}');
    
    add(GetUsers(status: event.status));
  }
}
