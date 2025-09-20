import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';

/// Navigation item configuration
@immutable
class NavigationItem {
  final String label;
  final IconData icon;
  final String route;
  final String? badge;
  final bool isActive;
  
  const NavigationItem({
    required this.label,
    required this.icon,
    required this.route,
    this.badge,
    this.isActive = false,
  });
}

/// Bottom navigation bar following project standards
@immutable
class BottomNavigationBar extends StatelessWidget {
  final List<NavigationItem> items;
  final int currentIndex;
  final ValueChanged<int>? onTap;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  
  const BottomNavigationBar({
    super.key,
    required this.items,
    required this.currentIndex,
    this.onTap,
    this.backgroundColor,
    this.selectedItemColor,
    this.unselectedItemColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveSpacing.medium,
            vertical: ResponsiveSpacing.small,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              final isSelected = index == currentIndex;
              
              return Expanded(
                child: GestureDetector(
                  onTap: () => onTap?.call(index),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: ResponsiveSpacing.small,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            Icon(
                              item.icon,
                              size: 24.w,
                              color: isSelected
                                  ? (selectedItemColor ?? Theme.of(context).colorScheme.primary)
                                  : (unselectedItemColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                            ),
                            if (item.badge != null)
                              Positioned(
                                right: -2,
                                top: -2,
                                child: Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.error,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 16.w,
                                    minHeight: 16.w,
                                  ),
                                  child: Text(
                                    item.badge!,
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.onError,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          item.label,
                          style: TextStyle(
                            fontSize: ResponsiveText.small.fontSize,
                            color: isSelected
                                ? (selectedItemColor ?? Theme.of(context).colorScheme.primary)
                                : (unselectedItemColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

/// Drawer navigation following project standards
@immutable
class DrawerNavigation extends StatelessWidget {
  final List<NavigationItem> items;
  final String? headerTitle;
  final Widget? headerWidget;
  final Widget? footerWidget;
  final String? currentRoute;
  final ValueChanged<String>? onItemTap;
  
  const DrawerNavigation({
    super.key,
    required this.items,
    this.headerTitle,
    this.headerWidget,
    this.footerWidget,
    this.currentRoute,
    this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Header
          if (headerWidget != null)
            headerWidget!
          else if (headerTitle != null)
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  headerTitle!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: ResponsiveText.large.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          
          // Navigation items
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = currentRoute == item.route;
                
                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                  title: Text(
                    item.label,
                    style: TextStyle(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                  trailing: item.badge != null
                      ? Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.error,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Text(
                            item.badge!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onError,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : null,
                  selected: isSelected,
                  selectedTileColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  onTap: () => onItemTap?.call(item.route),
                );
              },
            ),
          ),
          
          // Footer
          if (footerWidget != null)
            footerWidget!,
        ],
      ),
    );
  }
}

/// Tab navigation following project standards
@immutable
class TabNavigation extends StatelessWidget {
  final List<NavigationItem> items;
  final int currentIndex;
  final ValueChanged<int>? onTap;
  final bool isScrollable;
  final TabController? controller;
  final Color? indicatorColor;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  
  const TabNavigation({
    super.key,
    required this.items,
    required this.currentIndex,
    this.onTap,
    this.isScrollable = false,
    this.controller,
    this.indicatorColor,
    this.labelColor,
    this.unselectedLabelColor,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: isScrollable,
      indicatorColor: indicatorColor ?? Theme.of(context).colorScheme.primary,
      labelColor: labelColor ?? Theme.of(context).colorScheme.primary,
      unselectedLabelColor: unselectedLabelColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
      labelStyle: TextStyle(
        fontSize: ResponsiveText.medium.fontSize,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: ResponsiveText.medium.fontSize,
        fontWeight: FontWeight.normal,
      ),
      tabs: items.map((item) => Tab(
        text: item.label,
        icon: item.badge != null
            ? Stack(
                children: [
                  Icon(item.icon),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.error,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 16.w,
                        minHeight: 16.w,
                      ),
                      child: Text(
                        item.badge!,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onError,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )
            : Icon(item.icon),
      )).toList(),
      onTap: onTap,
    );
  }
}

/// Breadcrumb navigation following project standards
@immutable
class BreadcrumbNavigation extends StatelessWidget {
  final List<String> items;
  final String? currentItem;
  final ValueChanged<String>? onItemTap;
  final Color? textColor;
  final Color? activeColor;
  final Color? separatorColor;
  
  const BreadcrumbNavigation({
    super.key,
    required this.items,
    this.currentItem,
    this.onItemTap,
    this.textColor,
    this.activeColor,
    this.separatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        final isLast = index == items.length - 1;
        final isActive = currentItem == item || isLast;
        
        return Row(
          children: [
            GestureDetector(
              onTap: isActive ? null : () => onItemTap?.call(item),
              child: Text(
                item,
                style: TextStyle(
                  fontSize: ResponsiveText.small.fontSize,
                  color: isActive
                      ? (activeColor ?? Theme.of(context).colorScheme.primary)
                      : (textColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ),
            if (!isLast) ...[
              SizedBox(width: ResponsiveSpacing.small),
              Icon(
                Icons.chevron_right,
                size: 16.w,
                color: separatorColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
              ),
              SizedBox(width: ResponsiveSpacing.small),
            ],
          ],
        );
      }).toList(),
    );
  }
}
