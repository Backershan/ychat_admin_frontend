import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/theme/app_theme.dart';
import 'package:y_chat_admin/src/core/di/injection.dart';
import 'package:y_chat_admin/src/core/routes/app_router.dart';
import 'package:y_chat_admin/src/core/widgets/app_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize dependency injection
  await configureDependencies();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine design size based on screen width
        Size designSize;
        if (constraints.maxWidth >= 1200) {
          // Desktop: Use larger design size
          designSize = const Size(1440, 900);
        } else if (constraints.maxWidth >= 768) {
          // Tablet: Use medium design size
          designSize = const Size(768, 1024);
        } else {
          // Mobile: Use original design size
          designSize = const Size(360, 800);
        }

        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return AppWrapper(
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                themeMode: ThemeMode.system,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                routerConfig: AppRouter.router,
              ),
            );
          },
        );
      },
    );
  }
}
