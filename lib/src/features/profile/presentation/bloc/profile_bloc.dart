import 'dart:developer' as developer;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/usecases/get_profile_usecase.dart';
import '../../domain/usecases/update_profile_usecase.dart';
import '../../domain/usecases/change_password_usecase.dart';
import '../events/profile_event.dart';
import '../states/profile_state.dart';
import '../../../../core/error/failures.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase _getProfileUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;
  final ChangePasswordUseCase _changePasswordUseCase;

  ProfileBloc({
    required GetProfileUseCase getProfileUseCase,
    required UpdateProfileUseCase updateProfileUseCase,
    required ChangePasswordUseCase changePasswordUseCase,
  })  : _getProfileUseCase = getProfileUseCase,
        _updateProfileUseCase = updateProfileUseCase,
        _changePasswordUseCase = changePasswordUseCase,
        super(const ProfileState.initial()) {
    on<GetProfileEvent>(_onGetProfile);
    on<UpdateProfileEvent>(_onUpdateProfile);
    on<ChangePasswordEvent>(_onChangePassword);
    on<UploadAvatarEvent>(_onUploadAvatar);
    on<ClearErrorEvent>(_onClearError);
  }

  Future<void> _onGetProfile(GetProfileEvent event, Emitter<ProfileState> emit) async {
    developer.log('📋 Get profile event received', name: 'ProfileBloc');
    emit(const ProfileState.loading());

    final result = await _getProfileUseCase();

    await result.fold(
      (failure) async {
        developer.log('❌ Get profile failed: ${failure.message}', name: 'ProfileBloc');
        emit(ProfileState.error(_getErrorMessage(failure)));
      },
      (profile) async {
        developer.log('✅ Profile loaded: ${profile.name}', name: 'ProfileBloc');
        emit(ProfileState.loaded(profile));
      },
    );
  }

  Future<void> _onUpdateProfile(UpdateProfileEvent event, Emitter<ProfileState> emit) async {
    developer.log('✏️ Update profile event received', name: 'ProfileBloc');
    emit(const ProfileState.loading());

    final request = UpdateProfileRequest(
      name: event.name,
      bio: event.bio,
      avatar: event.avatar,
    );

    final result = await _updateProfileUseCase(request);

    await result.fold(
      (failure) async {
        developer.log('❌ Update profile failed: ${failure.message}', name: 'ProfileBloc');
        emit(ProfileState.error(_getErrorMessage(failure)));
      },
      (profile) async {
        developer.log('✅ Profile updated: ${profile.name}', name: 'ProfileBloc');
        emit(ProfileState.updated(profile));
      },
    );
  }

  Future<void> _onChangePassword(ChangePasswordEvent event, Emitter<ProfileState> emit) async {
    developer.log('🔒 Change password event received', name: 'ProfileBloc');
    print('🔒 ProfileBloc: Change password event received');
    print('🔒 ProfileBloc: Current password: ${event.currentPassword}');
    print('🔒 ProfileBloc: New password: ${event.newPassword}');
    print('🔒 ProfileBloc: Confirm password: ${event.confirmPassword}');
    
    emit(const ProfileState.loading());
    print('🔒 ProfileBloc: Emitted loading state');

    final request = ChangePasswordRequest(
      currentPassword: event.currentPassword,
      newPassword: event.newPassword,
      confirmPassword: event.confirmPassword,
    );

    print('🔒 ProfileBloc: Created request: $request');

    final result = await _changePasswordUseCase(request);
    print('🔒 ProfileBloc: Got result from use case: $result');

    result.fold(
      (failure) {
        developer.log('❌ Change password failed: ${failure.message}', name: 'ProfileBloc');
        print('🔒 ProfileBloc: Change password failed: ${failure.message}');
        emit(ProfileState.error(_getErrorMessage(failure)));
        print('🔒 ProfileBloc: Emitted error state');
      },
      (_) {
        developer.log('✅ Password changed successfully', name: 'ProfileBloc');
        print('🔒 ProfileBloc: Password changed successfully');
        emit(const ProfileState.passwordChanged());
        print('🔒 ProfileBloc: Emitted passwordChanged state');
      },
    );
  }

  Future<void> _onUploadAvatar(UploadAvatarEvent event, Emitter<ProfileState> emit) async {
    developer.log('📸 Upload avatar event received', name: 'ProfileBloc');
    emit(const ProfileState.loading());

    // TODO: Implement avatar upload
    // For now, just emit success with the image path
    emit(ProfileState.avatarUploaded(event.imagePath));
  }

  void _onClearError(ClearErrorEvent event, Emitter<ProfileState> emit) {
    developer.log('🧹 Clearing error', name: 'ProfileBloc');
    emit(const ProfileState.initial());
  }

  String _getErrorMessage(Failure failure) {
    return failure.message;
  }
}
