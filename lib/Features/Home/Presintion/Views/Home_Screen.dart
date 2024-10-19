import 'package:bookly_app/Core/Utils/Style.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/BestSellerListViewItem.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_App_Bar.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_Future_List_View.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomAppBar(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: futureListView(),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'Best Sellar',
                  style: Style.textstyle22,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: CustomBestsellerListView(),
        )
      ],
    ));
  }
}

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
