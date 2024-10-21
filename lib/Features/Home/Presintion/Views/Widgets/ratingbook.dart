import 'package:flutter/material.dart';

class ratingbook extends StatelessWidget {
  const ratingbook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          '3.8',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(2312)',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
