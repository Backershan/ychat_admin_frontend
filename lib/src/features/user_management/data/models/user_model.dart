import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';

class UserModel {
  final int id;
  final String? name; // Changed from firstname to name to match API
  final String? email;
  final String? status;
  final bool? isActive; // Changed from is_active to isActive
  final String? createdAt; // Changed from created_at to createdAt
  final String? lastSeen; // Changed from last_seen to lastSeen
  // Keep additional fields for backward compatibility
  final String? firstname;
  final String? lastname;
  final String? phone;
  final String? uid;
  final String? avatar;
  final String? role;
  final String? ipAddress;
  final String? deviceInfo;
  final String? lastLoginAt;
  final String? updatedAt;
  final String? banReason;
  final String? banType;
  final String? deactivationReason;
  final bool? isBanned;

  const UserModel({
    required this.id,
    this.name,
    this.email,
    this.status,
    this.isActive,
    this.createdAt,
    this.lastSeen,
    this.firstname,
    this.lastname,
    this.phone,
    this.uid,
    this.avatar,
    this.role,
    this.ipAddress,
    this.deviceInfo,
    this.lastLoginAt,
    this.updatedAt,
    this.banReason,
    this.banType,
    this.deactivationReason,
    this.isBanned,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int,
      name: json['name'] as String?, // New API field
      email: json['email'] as String?,
      status: json['status'] as String?,
      isActive: json['is_active'] as bool?, // API uses is_active
      createdAt: json['created_at'] as String?, // API uses created_at
      lastSeen: json['last_seen'] as String?, // API uses last_seen
      // Keep additional fields for backward compatibility
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      uid: json['uid'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      ipAddress: json['ipAddress'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
      lastLoginAt: json['lastLoginAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      banReason: json['banReason'] as String?,
      banType: json['banType'] as String?,
      deactivationReason: json['deactivationReason'] as String?,
      isBanned: json['isBanned'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'status': status,
      'is_active': isActive,
      'created_at': createdAt,
      'last_seen': lastSeen,
      'firstname': firstname,
      'lastname': lastname,
      'phone': phone,
      'uid': uid,
      'avatar': avatar,
      'role': role,
      'ipAddress': ipAddress,
      'deviceInfo': deviceInfo,
      'lastLoginAt': lastLoginAt,
      'updatedAt': updatedAt,
      'banReason': banReason,
      'banType': banType,
      'deactivationReason': deactivationReason,
      'isBanned': isBanned,
    };
  }

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      status: status,
      isActive: isActive,
      createdAt: createdAt,
      lastSeen: lastSeen,
      firstname: firstname,
      lastname: lastname,
      phone: phone,
      uid: uid,
      avatar: avatar,
      role: role,
      ipAddress: ipAddress,
      deviceInfo: deviceInfo,
      lastLoginAt: lastLoginAt,
      updatedAt: updatedAt,
      banReason: banReason,
      banType: banType,
      deactivationReason: deactivationReason,
      isBanned: isBanned,
    );
  }
}
