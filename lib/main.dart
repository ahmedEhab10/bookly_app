import 'package:bookly_app/Const.dart';
import 'package:bookly_app/Features/Splash/Presentaion/View/Spalsh_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SpalshView(),
    );
  }
}
