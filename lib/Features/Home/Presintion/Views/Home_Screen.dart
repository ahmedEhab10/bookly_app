import 'package:bookly_app/Core/Utils/Style.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_App_Bar.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_Future_List_View.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
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
              style: Style.TitleMedum,
            ),
          )
        ],
      ),
    );
  }
}
