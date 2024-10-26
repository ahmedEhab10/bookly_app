import 'package:bookly_app/Core/Utils/Style.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/ratingbook.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem(
      {super.key,
      required this.ImageUrl,
      required this.BookName,
      required this.auther});

  final String ImageUrl;
  final String BookName;
  final String auther;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetailsView');
      },
      child: Row(
        children: [
          SizedBox(
            height: 100,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(ImageUrl),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(BookName, style: Style.textstyle20),
                Text(auther,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey)),
                const Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Spacer(),
                    ratingbook()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
