import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Actiondetailsbook extends StatelessWidget {
  const Actiondetailsbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: customButton(
              text: '19.99 \$',
              backgroundcolor: Colors.white,
              Textcolor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: customButton(
              text: 'Free Preview',
              size: 16,
              backgroundcolor: Colors.orange,
              Textcolor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }
}
