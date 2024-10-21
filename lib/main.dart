import 'package:bookly_app/Const.dart';
import 'package:bookly_app/Core/Utils/App_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      debugShowCheckedModeBanner: false,
    );
  }
}
