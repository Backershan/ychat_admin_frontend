import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_users_usecase.dart';
import '../../domain/usecases/create_user_usecase.dart';
import '../../domain/usecases/update_user_usecase.dart';
import '../../domain/usecases/delete_user_usecase.dart';
import '../../domain/usecases/update_user_status_usecase.dart';
import '../../domain/usecases/ban_user_usecase.dart';
import '../../domain/usecases/unban_user_usecase.dart';
import '../../domain/usecases/activate_user_usecase.dart';
import '../../domain/usecases/deactivate_user_usecase.dart';
import 'user_event.dart';
import 'user_state.dart';

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

  UserBloc({
    required GetUsersUseCase getUsersUseCase,
    required CreateUserUseCase createUserUseCase,
    required UpdateUserUseCase updateUserUseCase,
    required DeleteUserUseCase deleteUserUseCase,
    required UpdateUserStatusUseCase updateUserStatusUseCase,
    required BanUserUseCase banUserUseCase,
    required UnbanUserUseCase unbanUserUseCase,
    required ActivateUserUseCase activateUserUseCase,
    required DeactivateUserUseCase deactivateUserUseCase,
  })  : _getUsersUseCase = getUsersUseCase,
        _createUserUseCase = createUserUseCase,
        _updateUserUseCase = updateUserUseCase,
        _deleteUserUseCase = deleteUserUseCase,
        _updateUserStatusUseCase = updateUserStatusUseCase,
        _banUserUseCase = banUserUseCase,
        _unbanUserUseCase = unbanUserUseCase,
        _activateUserUseCase = activateUserUseCase,
        _deactivateUserUseCase = deactivateUserUseCase,
        super(UserInitial()) {
    on<GetUsers>(_onGetUsers);
    on<CreateUser>(_onCreateUser);
    on<UpdateUser>(_onUpdateUser);
    on<DeleteUser>(_onDeleteUser);
    on<UpdateUserStatus>(_onUpdateUserStatus);
    on<BanUser>(_onBanUser);
    on<UnbanUser>(_onUnbanUser);
    on<ActivateUser>(_onActivateUser);
    on<DeactivateUser>(_onDeactivateUser);
    on<RefreshUsers>(_onRefreshUsers);
  }

  Future<void> _onGetUsers(GetUsers event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Getting users with search: ${event.search}, status: ${event.status}');
    
    final result = await _getUsersUseCase(
      search: event.search,
      status: event.status,
      page: event.page,
      limit: event.limit,
    );

    result.fold(
      (failure) {
        print('🔧 UserBloc: GetUsers failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (users) {
        print('🔧 UserBloc: GetUsers successful, got ${users.users.length} users');
        emit(UsersLoaded(users));
      },
    );
  }

  Future<void> _onCreateUser(CreateUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Creating user: ${event.email}');
    
    final result = await _createUserUseCase(
      firstname: event.firstname,
      email: event.email,
      lastname: event.lastname,
      phone: event.phone,
      password: event.password,
      status: event.status,
    );

    result.fold(
      (failure) {
        print('🔧 UserBloc: CreateUser failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (user) {
        print('🔧 UserBloc: CreateUser successful: ${user.email}');
        emit(UserCreated(user));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onUpdateUser(UpdateUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Updating user: ${event.userId}');
    
    final result = await _updateUserUseCase(
      userId: event.userId,
      firstname: event.firstname,
      lastname: event.lastname,
      email: event.email,
      phone: event.phone,
      status: event.status,
    );

    result.fold(
      (failure) {
        print('🔧 UserBloc: UpdateUser failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (user) {
        print('🔧 UserBloc: UpdateUser successful: ${user.email}');
        emit(UserUpdated(user));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onDeleteUser(DeleteUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Deleting user: ${event.userId}');
    
    final result = await _deleteUserUseCase(event.userId);

    result.fold(
      (failure) {
        print('🔧 UserBloc: DeleteUser failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (_) {
        print('🔧 UserBloc: DeleteUser successful: ${event.userId}');
        emit(UserDeleted(event.userId));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onUpdateUserStatus(UpdateUserStatus event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Updating user status: ${event.userId} to ${event.status}');
    
    final result = await _updateUserStatusUseCase(
      userId: event.userId,
      status: event.status,
    );

    result.fold(
      (failure) {
        print('🔧 UserBloc: UpdateUserStatus failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (_) {
        print('🔧 UserBloc: UpdateUserStatus successful: ${event.userId}');
        emit(UserStatusUpdated(userId: event.userId, status: event.status));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onBanUser(BanUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Banning user: ${event.userId}');
    
    final result = await _banUserUseCase(
      userId: event.userId,
      reason: event.reason,
      banType: event.banType,
    );

    result.fold(
      (failure) {
        print('🔧 UserBloc: BanUser failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (_) {
        print('🔧 UserBloc: BanUser successful: ${event.userId}');
        emit(UserBanned(event.userId));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onUnbanUser(UnbanUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Unbanning user: ${event.userId}');
    
    final result = await _unbanUserUseCase(event.userId);

    result.fold(
      (failure) {
        print('🔧 UserBloc: UnbanUser failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (_) {
        print('🔧 UserBloc: UnbanUser successful: ${event.userId}');
        emit(UserUnbanned(event.userId));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onActivateUser(ActivateUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Activating user: ${event.userId}');
    
    final result = await _activateUserUseCase(event.userId);

    result.fold(
      (failure) {
        print('🔧 UserBloc: ActivateUser failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (_) {
        print('🔧 UserBloc: ActivateUser successful: ${event.userId}');
        emit(UserActivated(event.userId));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onDeactivateUser(DeactivateUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    
    print('🔧 UserBloc: Deactivating user: ${event.userId}');
    
    final result = await _deactivateUserUseCase(
      userId: event.userId,
      reason: event.reason,
    );

    result.fold(
      (failure) {
        print('🔧 UserBloc: DeactivateUser failed: ${failure.message}');
        emit(UserError(failure.message));
      },
      (_) {
        print('🔧 UserBloc: DeactivateUser successful: ${event.userId}');
        emit(UserDeactivated(event.userId));
        // Refresh the users list
        add(const GetUsers());
      },
    );
  }

  Future<void> _onRefreshUsers(RefreshUsers event, Emitter<UserState> emit) async {
    add(const GetUsers());
  }
}