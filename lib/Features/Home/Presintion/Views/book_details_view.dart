import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/customBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [customBookDetailsAppBar()],
      )),
    );
  }
}
