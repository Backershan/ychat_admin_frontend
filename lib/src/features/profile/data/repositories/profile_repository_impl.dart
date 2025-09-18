import '../datasources/profile_remote_datasource.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;

  ProfileRepositoryImpl({required ProfileRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<ProfileEntity> getProfile() async {
    return await _remoteDataSource.getProfile();
  }

  @override
  Future<ProfileEntity> updateProfile(UpdateProfileRequest request) async {
    return await _remoteDataSource.updateProfile(request);
  }

  @override
  Future<void> changePassword(ChangePasswordRequest request) async {
    try {
      await _remoteDataSource.changePassword(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> uploadAvatar(String imagePath) async {
    return await _remoteDataSource.uploadAvatar(imagePath);
  }
}
