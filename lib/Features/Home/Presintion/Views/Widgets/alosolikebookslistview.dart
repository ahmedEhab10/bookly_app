import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_List_View_Item.dart';
import 'package:flutter/material.dart';

class alosolikebookslistview extends StatelessWidget {
  const alosolikebookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0),
              child: CustomListViewItem(),
            );
          }),
    );
  }
}
