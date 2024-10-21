import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(
      {super.key,
      required this.backgroundcolor,
      required this.Textcolor,
      this.borderRadius,
      required this.text});
  final Color backgroundcolor;
  final Color Textcolor;
  final BorderRadius? borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, color: Textcolor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
