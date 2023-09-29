import 'package:alarm_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 0,),
        Image.asset(AppImages.appLogo),
      ],
    );
  }
}                                                                                                                                                                                   