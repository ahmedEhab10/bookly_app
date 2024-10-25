import 'package:bookly_app/Const.dart';
import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Core/Utils/App_route.dart';
import 'package:bookly_app/Core/Utils/Service_Locator.dart';
import 'package:bookly_app/Features/Home/Presintion/View_Models/Best_Seller_cubit/best_seller_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presintion/View_Models/Future_Books_Cubit/future_books_cubit.dart';
import 'package:bookly_app/Features/Home/data/Models/repos/Home_repo_imple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FutureBooksCubit(homeRepo: getIt.get<HomeRepoImple>()),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubit(getIt.get<HomeRepoImple>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoute.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
