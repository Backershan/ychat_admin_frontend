import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = GetProfileEvent;
  const factory ProfileEvent.updateProfile({
    required String name,
    String? bio,
    String? avatar,
    String? phoneNumber,
    String? department,
    String? position,
  }) = UpdateProfileEvent;
  const factory ProfileEvent.changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) = ChangePasswordEvent;
  const factory ProfileEvent.uploadAvatar(String imagePath) = UploadAvatarEvent;
  const factory ProfileEvent.clearError() = ClearErrorEvent;
}
