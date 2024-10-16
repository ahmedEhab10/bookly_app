import 'package:flutter/material.dart';

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
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 962));

    scrollAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: scrollAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: scrollAnimation,
            child: Center(
              child: Image.asset('assets/images/Logo.png'),
            ),
          );
        });
  }
}
