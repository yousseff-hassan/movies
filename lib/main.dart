import 'package:flutter/material.dart';
import 'package:movies_app/src/features/core/theme/app_colors.dart';
import 'src/features/core/routing/routes_manager.dart';
import 'src/features/splash/splash_screen.dart';
import 'src/features/auth/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (_) => const SplashScreen(),
        AppRoutes.login: (_) => const LoginScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black1, // لون الخلفية الافتراضي
       
      ),
    );
  }
}
