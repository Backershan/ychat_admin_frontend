import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:y_chat_admin/src/features/app_management/presentation/pages/app_management_page.dart';
import 'package:y_chat_admin/src/features/settings/presentation/pages/settings_page.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/web_responsive.dart';
import 'dashboard_page.dart';
import '../../../user_management/presentation/pages/user_management_page.dart';
import '../../../ticketing/presentation/pages/ticketing_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_state.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../../../../core/di/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainDashboardPage extends StatefulWidget {
  const MainDashboardPage({super.key});

  @override
  State<MainDashboardPage> createState() => _MainDashboardPageState();
}

class _MainDashboardPageState extends State<MainDashboardPage>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  late AnimationController _sidebarAnimationController;
  late AnimationController _contentAnimationController;
  late Animation<double> _sidebarAnimation;
  late Animation<double> _contentAnimation;

  final List<DashboardPageItem> _pages = [
    DashboardPageItem(
      title: 'Dashboard',
      icon: Icons.dashboard_outlined,
      selectedIcon: Icons.dashboard,
      page: const DashboardPage(),
    ),
    DashboardPageItem(
      title: 'Users',
      icon: Icons.people_outline,
      selectedIcon: Icons.people,
      page: const UserManagementPage(),
    ),
    DashboardPageItem(
      title: 'Apps',
      icon: Icons.apps_outlined,
      selectedIcon: Icons.apps,
      page: const AppManagementPage(),
    ),
    DashboardPageItem(
      title: 'Tickets',
      icon: Icons.support_agent_outlined,
      selectedIcon: Icons.support_agent,
      page: const TicketingPage(),
    ),
    DashboardPageItem(
      title: 'Settings',
      icon: Icons.settings_outlined,
      selectedIcon: Icons.settings,
      page: const SettingsPage(),
    ),
    DashboardPageItem(
      title: 'Profile',
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      page: BlocProvider(
        create: (context) => getIt<ProfileBloc>(),
        child: const ProfilePage(),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _sidebarAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _contentAnimationController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _sidebarAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _sidebarAnimationController,
      curve: Curves.easeInOut,
    ));

    _contentAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _contentAnimationController,
      curve: Curves.easeOutCubic,
    ));

    _sidebarAnimationController.forward();
    _contentAnimationController.forward();
  }

  @override
  void dispose() {
    _sidebarAnimationController.dispose();
    _contentAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          authenticated: (user) {},
          unauthenticated: () {
            context.go(AppRoutes.login);
          },
          error: (message) {},
          passwordChanged: () {},
          profileUpdated: (user) {},
          superAdminRegistered: (superAdminResponse) {},
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Desktop Sidebar Navigation - Modern Design
            if (isMobile == false)
              AnimatedBuilder(
                animation: _sidebarAnimation,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _sidebarAnimation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1, 0),
                        end: Offset.zero,
                      ).animate(CurvedAnimation(
                        parent: _sidebarAnimationController,
                        curve: Curves.easeOutCubic,
                      )),
                      child: _buildModernSidebar(),
                    ),
                  );
                },
              ),
            
            // Main Content Area
            Expanded(
              child: AnimatedBuilder(
                animation: _contentAnimation,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _contentAnimation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.1),
                        end: Offset.zero,
                      ).animate(CurvedAnimation(
                        parent: _contentAnimationController,
                        curve: Curves.easeOutCubic,
                      )),
                      child: isMobile 
                        ? _buildMainContent(isMobile)
                        : Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: WebResponsive.getMaxContentWidth(context),
                              ),
                              child: _buildMainContent(isMobile),
                            ),
                          ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        // Mobile Bottom Navigation
        bottomNavigationBar: isMobile ? _buildMobileNavigation() : null,
      ),
    );
  }

  Widget _buildModernSidebar() {
    return Container(
      width: WebResponsive.isWebDesktop(context) ? 120.w : 100.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.surface,
            AppColors.surface.withValues(alpha: 0.95),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(4, 0),
          ),
        ],
      ),
      child: Column(
        children: [
        
          // Navigation Items
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return _buildNavigationItem(index);
                },
              ),
            ),
          ),
          
          // User Profile Section
          _buildUserProfileSection(),
        ],
      ),
    );
  }

  Widget _buildNavigationItem(int index) {
    final page = _pages[index];
    final isSelected = _selectedIndex == index;
    
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.r),
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
            decoration: BoxDecoration(
              gradient: isSelected
                  ? LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.primary.withValues(alpha: 0.1),
                        AppColors.primary.withValues(alpha: 0.05),
                      ],
                    )
                  : null,
              color: isSelected ? null : Colors.transparent,
              borderRadius: BorderRadius.circular(16.r),
              border: isSelected
                  ? Border.all(
                      color: AppColors.primary.withValues(alpha: 0.2),
                      width: 1,
                    )
                  : null,
            ),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.primary,
                              AppColors.primary.withValues(alpha: 0.8),
                            ],
                          )
                        : null,
                    color: isSelected ? null : AppColors.onSurface.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: AppColors.primary.withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Icon(
                    isSelected ? page.selectedIcon : page.icon,
                    size: 22.w,
                    color: isSelected ? Colors.white : AppColors.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              //   SizedBox(width: 16.w),
              //   Expanded(
              //     child: Text(
              //       page.title,
              //       style: TextStyle(
              //         fontSize: 15.sp,
              //         fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              //         color: isSelected ? AppColors.primary : AppColors.onSurface,
              //       ),
              //       overflow: TextOverflow.ellipsis,
              //       maxLines: 1,
              //     ),
              //   ),
              //   if (isSelected)
              //     Container(
              //       width: 6.w,
              //       height: 6.w,
              //       decoration: BoxDecoration(
              //         color: AppColors.primary,
              //         shape: BoxShape.circle,
              //       ),
              //     ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserProfileSection() {
    return Container(
      margin: EdgeInsets.all(0.w),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.background.withValues(alpha: 0.5),
            AppColors.background.withValues(alpha: 0.3),
          ],
        ),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        children: [
          // Profile Button
          // Material(
          //   color: Colors.transparent,
          //   child: InkWell(
          //     borderRadius: BorderRadius.circular(12.r),
          //     onTap: () {
          //       setState(() {
          //         _selectedIndex = _pages.indexWhere((page) => page.title == 'Profile');
          //       });
          //     },
          //     child: Container(
          //       padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          //       child: Row(
          //         children: [
          //           Container(
          //             padding: EdgeInsets.all(10.w),
          //             decoration: BoxDecoration(
          //               gradient: LinearGradient(
          //                 begin: Alignment.topLeft,
          //                 end: Alignment.bottomRight,
          //                 colors: [
          //                   AppColors.primary,
          //                   AppColors.primary.withValues(alpha: 0.8),
          //                 ],
          //               ),
          //               borderRadius: BorderRadius.circular(12.r),
          //             ),
          //             child: Icon(
          //               Icons.account_circle_rounded,
          //               size: 20.w,
          //               color: Colors.white,
          //             ),
          //           ),
          //         //   SizedBox(width: 12.w),
          //         //   Expanded(
          //         //     child: Text(
          //         //       'Profile',
          //         //       style: TextStyle(
          //         //         fontSize: 14.sp,
          //         //         fontWeight: FontWeight.w600,
          //         //         color: AppColors.onSurface,
          //         //       ),
          //         //     ),
          //         //   ),
          //         //   Icon(
          //         //     Icons.arrow_forward_ios_rounded,
          //         //     size: 16.w,
          //         //     color: AppColors.onSurface.withValues(alpha: 0.5),
          //         //   ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          
          // SizedBox(height: 12.h),
          
          // Logout Button
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(12.r),
              onTap: () => _showLogoutDialog(context),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Icon(
                        Icons.logout_rounded,
                        size: 20.w,
                        color: Colors.red,
                      ),
                    ),
                    // SizedBox(width: 12.w),
                    // Expanded(
                    //   child: Text(
                    //     'Logout',
                    //     style: TextStyle(
                    //       fontSize: 14.sp,
                    //       fontWeight: FontWeight.w600,
                    //       color: Colors.red,
                    //     ),
                    //   ),
                    // ),
                    // Icon(
                    //   Icons.arrow_forward_ios_rounded,
                    //   size: 16.w,
                    //   color: Colors.red.withValues(alpha: 0.5),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Mobile App Bar
        if (isMobile) _buildMobileAppBar(),
        
        // Page Content
        Expanded(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: Container(
              key: ValueKey(_selectedIndex),
              width: double.infinity,
              height: double.infinity,
              child: _pages[_selectedIndex].page,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.surface,
            AppColors.surface.withValues(alpha: 0.95),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Mobile Menu Button
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary,
                  AppColors.primary.withValues(alpha: 0.8),
                ],
              ),
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () => _showMobileDrawer(context),
              icon: Icon(
                Icons.menu_rounded,
                size: 22.w,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          
          // Title
          Expanded(
            child: Text(
              _pages[_selectedIndex].title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onSurface,
              ),
            ),
          ),
          
          // Action Buttons
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12.r),
                    onTap: () {
                      setState(() {
                        _selectedIndex = _pages.indexWhere((page) => page.title == 'Profile');
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 22.w,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12.r),
                    onTap: () => _showLogoutDialog(context),
                    child: Container(
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Icon(
                        Icons.logout_rounded,
                        size: 22.w,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileNavigation() {
    // Limit mobile navigation to 4 items + More
    final mainPages = _pages.take(4).toList();
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.surface,
            AppColors.surface.withValues(alpha: 0.95),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: NavigationBar(
        selectedIndex: _selectedIndex < 4 ? _selectedIndex : 4,
        onDestinationSelected: (index) {
          if (index < 4) {
            setState(() {
              _selectedIndex = index;
            });
          } else {
            // Show more options
            _showMoreOptions(context);
          }
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        destinations: [
          ...mainPages.map((page) {
            return NavigationDestination(
              icon: Icon(page.icon),
              selectedIcon: Icon(page.selectedIcon),
              label: page.title,
            );
          }).toList(),
          NavigationDestination(
            icon: const Icon(Icons.more_horiz),
            selectedIcon: const Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }

  void _showMoreOptions(BuildContext context) {
    final morePages = _pages.skip(4).toList();
    
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40.w,
              height: 4.h,
              margin: EdgeInsets.symmetric(vertical: 12.h),
              decoration: BoxDecoration(
                color: AppColors.onSurface.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                'More Options',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.onSurface,
                ),
              ),
            ),
            ...morePages.asMap().entries.map((entry) {
              final index = entry.key + 4; // Offset by 4 for the main pages
              final page = entry.value;
              final isSelected = _selectedIndex == index;
              
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12.r),
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.primary.withValues(alpha: 0.1) : Colors.transparent,
                        borderRadius: BorderRadius.circular(12.r),
                        border: isSelected ? Border.all(color: AppColors.primary.withValues(alpha: 0.2)) : null,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            isSelected ? page.selectedIcon : page.icon,
                            size: 20.w,
                            color: isSelected ? AppColors.primary : AppColors.onSurface.withValues(alpha: 0.7),
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            page.title,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                              color: isSelected ? AppColors.primary : AppColors.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  void _showMobileDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.surface,
              AppColors.surface.withValues(alpha: 0.95),
            ],
          ),
          borderRadius: BorderRadius.only(
            topLeft: BorderRadius.circular(24.r).topLeft,
            topRight: BorderRadius.circular(24.r).topRight,
          ),
        ),
        child: Column(
          children: [
            // Handle
            Container(
              margin: EdgeInsets.only(top: 12.h),
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.onSurface.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            
            // Header
            Container(
              padding: EdgeInsets.all(24.w),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.primary,
                          AppColors.primary.withValues(alpha: 0.8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Icon(
                      Icons.admin_panel_settings_rounded,
                      size: 24.w,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Admin Panel',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.onSurface,
                          ),
                        ),
                        Text(
                          'Management Dashboard',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.onSurface.withValues(alpha: 0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // Navigation Items
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return _buildMobileNavigationItem(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileNavigationItem(int index) {
    final page = _pages[index];
    final isSelected = _selectedIndex == index;
    
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.r),
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
            Navigator.pop(context);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            decoration: BoxDecoration(
              gradient: isSelected
                  ? LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.primary.withValues(alpha: 0.1),
                        AppColors.primary.withValues(alpha: 0.05),
                      ],
                    )
                  : null,
              color: isSelected ? null : Colors.transparent,
              borderRadius: BorderRadius.circular(16.r),
              border: isSelected
                  ? Border.all(
                      color: AppColors.primary.withValues(alpha: 0.2),
                      width: 1,
                    )
                  : null,
            ),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.primary,
                              AppColors.primary.withValues(alpha: 0.8),
                            ],
                          )
                        : null,
                    color: isSelected ? null : AppColors.onSurface.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: AppColors.primary.withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Icon(
                    isSelected ? page.selectedIcon : page.icon,
                    size: 22.w,
                    color: isSelected ? Colors.white : AppColors.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Text(
                    page.title,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                      color: isSelected ? AppColors.primary : AppColors.onSurface,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                if (isSelected)
                  Container(
                    width: 6.w,
                    height: 6.w,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                Icons.logout_rounded,
                color: Colors.red,
                size: 20.w,
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Text(
          'Are you sure you want to logout?',
          style: TextStyle(fontSize: 14.sp),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(
                color: AppColors.onSurface.withValues(alpha: 0.7),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<AuthBloc>().add(const AuthEvent.logout());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Logout',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardPageItem {
  final String title;
  final IconData icon;
  final IconData selectedIcon;
  final Widget page;

  DashboardPageItem({
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.page,
  });
}