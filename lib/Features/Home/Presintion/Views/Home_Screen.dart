import 'package:bookly_app/Core/Utils/Style.dart';
import 'package:bookly_app/Features/Home/Presintion/View_Models/Best_Seller_cubit/best_seller_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presintion/View_Models/Future_Books_Cubit/future_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/CustomBestsellerListView.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_App_Bar.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_Future_List_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<FutureBooksCubit>(context).featchfeatureBooks();
    BlocProvider.of<BestSellerBooksCubit>(context).featchBeastSellerBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomAppBar(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: futureListView(),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'Best Sellar',
                  style: Style.textstyle22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: CustomBestsellerListView(),
        )
      ],
    ));
  }
}
