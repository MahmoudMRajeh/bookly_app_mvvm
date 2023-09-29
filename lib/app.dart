import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/view/splash_view.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
