import 'package:bookly_app/Core/Utils/Style.dart';
import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/BookDetailsImage.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/customBookDetailsAppBar.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/ratingbook.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              customBookDetailsAppBar(),
              BookDetailsImage(),
              SizedBox(
                height: 43,
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
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ratingbook(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Actiondetailsbook()
            ],
          ),
        ),
      ),
    );
  }
}

class Actiondetailsbook extends StatelessWidget {
  const Actiondetailsbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: customButton(
              text: '19.99 \$',
              backgroundcolor: Colors.white,
              Textcolor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: customButton(
              text: 'Free Preview',
              backgroundcolor: Colors.orange,
              Textcolor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
