import 'package:bookly_app/Const.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: KPrimaryColor,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/TestFromChrom.jpeg'))),
        ),
      ),
    );
  }
}
