import '../entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<ProfileEntity> getProfile();
  Future<ProfileEntity> updateProfile(UpdateProfileRequest request);
  Future<void> changePassword(ChangePasswordRequest request);
  Future<String> uploadAvatar(String imagePath);
}
