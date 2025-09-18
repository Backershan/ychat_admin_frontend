import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';

class ProfileAvatar extends StatelessWidget {
  final String? avatarUrl;
  final String name;
  final VoidCallback? onTap;
  final double size;
  final bool showEditIcon;

  const ProfileAvatar({
    super.key,
    this.avatarUrl,
    required this.name,
    this.onTap,
    this.size = 80,
    this.showEditIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: size.w,
            height: size.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primary.withValues(alpha: 0.3),
                width: 2.w,
              ),
            ),
            child: ClipOval(
              child: avatarUrl != null && avatarUrl!.isNotEmpty
                  ? Image.network(
                      avatarUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return _buildInitialsAvatar();
                      },
                    )
                  : _buildInitialsAvatar(),
            ),
          ),
          if (showEditIcon)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 24.w,
                height: 24.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.surface,
                    width: 2.w,
                  ),
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: AppColors.onPrimary,
                  size: 12.w,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildInitialsAvatar() {
    final initials = name.isNotEmpty
        ? name.split(' ').map((e) => e.isNotEmpty ? e[0] : '').take(2).join().toUpperCase()
        : 'U';
    
    return Container(
      width: size.w,
      height: size.w,
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          initials,
          style: TextStyle(
            fontSize: (size * 0.4).sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
