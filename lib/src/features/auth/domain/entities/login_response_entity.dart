import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_entity.freezed.dart';
part 'login_response_entity.g.dart';

@freezed
class LoginResponseEntity with _$LoginResponseEntity {
  const factory LoginResponseEntity({
    required bool success,
    required String message,
    required LoginDataEntity data,
  }) = _LoginResponseEntity;

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);
}

@freezed
class LoginDataEntity with _$LoginDataEntity {
  const factory LoginDataEntity({
    required int id,
    required String name,
    required String phone,
    required String email,
    required String role,
    required String token,
  }) = _LoginDataEntity;

  factory LoginDataEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginDataEntityFromJson(json);
}
