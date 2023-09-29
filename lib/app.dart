import 'package:alarm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/splash/presentation/view/splash_view.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
