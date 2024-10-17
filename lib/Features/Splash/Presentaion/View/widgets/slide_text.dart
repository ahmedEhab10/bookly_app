import 'package:flutter/material.dart';

class Sliding_Text extends StatelessWidget {
  const Sliding_Text({
    super.key,
    required this.scrollAnimation,
  });

  final Animation<Offset> scrollAnimation;

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
