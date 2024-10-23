import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'slide_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> scrollAnimation;
  @override
  void initState() {
    super.initState();
    InitSlideAnimation();

    NavigatToHomeScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Sliding_Text(scrollAnimation: scrollAnimation);
  }

  void InitSlideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 962));

    scrollAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void NavigatToHomeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeScreen(),
      //  transition: Transition.zoom, duration: KTransionDuration);
      GoRouter.of(context).push('/HomeView');
    });
  }
}
