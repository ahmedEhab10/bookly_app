import 'package:bookly_app/Core/Utils/Style.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Actiondetailsbook.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/BookDetailsImage.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_List_View_Item.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/alosolikebookslistview.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/customBookDetailsAppBar.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/ratingbook.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    customBookDetailsAppBar(),
                    BookDetailsImage(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Harry Potter and the Gobelt',
                      style: Style.textstyle30bold,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Opacity(
                      opacity: .7,
                      child: Text(
                        'j.k Rowling',
                        style: Style.textstyle18,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ratingbook(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Actiondetailsbook(),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'You can also like',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    alosolikebookslistview()
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
