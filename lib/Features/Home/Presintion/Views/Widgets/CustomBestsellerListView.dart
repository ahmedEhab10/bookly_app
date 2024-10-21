import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';

class CustomBestsellerListView extends StatelessWidget {
  const CustomBestsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: BestSellerListViewItem(),
              );
            }),
      ),
    );
  }
}
