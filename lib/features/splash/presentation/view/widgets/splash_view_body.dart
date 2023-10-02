import 'package:alarm_app/core/constants/constants.dart';
import 'package:alarm_app/core/utils/app_assets.dart';
import 'package:alarm_app/features/home/presentaion/veiws/home_view.dart';
import 'package:alarm_app/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.appLogoImage),
        const SizedBox(
          height: 10,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(
          () => const HomeView(),
          transition: Transition.fadeIn,
          duration: kTranstionDuration,
        );
      },
    );
  }
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
