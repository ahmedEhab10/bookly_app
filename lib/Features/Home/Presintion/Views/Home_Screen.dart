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
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Haary potter test.jpeg'),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Harry Potter\nand the Goblet of Fire',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            Text('1K Rowling',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '19.99 \$',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  width: 159,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 16,
                ),
                Text(
                  '3.8',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
