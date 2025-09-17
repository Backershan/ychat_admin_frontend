import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/super_admin_entity.dart';

part 'super_admin_response_entity.freezed.dart';
part 'super_admin_response_entity.g.dart';

@freezed
class SuperAdminResponseEntity with _$SuperAdminResponseEntity {
  const factory SuperAdminResponseEntity({
    required bool success,
    required String message,
    required SuperAdminEntity data,
  }) = _SuperAdminResponseEntity;

  factory SuperAdminResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SuperAdminResponseEntityFromJson(json);
}
