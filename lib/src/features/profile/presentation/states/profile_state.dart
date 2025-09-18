import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/profile_entity.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded(ProfileEntity profile) = _Loaded;
  const factory ProfileState.updated(ProfileEntity profile) = _Updated;
  const factory ProfileState.passwordChanged() = _PasswordChanged;
  const factory ProfileState.avatarUploaded(String avatarUrl) = _AvatarUploaded;
  const factory ProfileState.error(String message) = _Error;
}
