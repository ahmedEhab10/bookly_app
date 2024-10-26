import 'package:bookly_app/Features/Home/Presintion/View_Models/Best_Seller_cubit/best_seller_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBestsellerListView extends StatelessWidget {
  const CustomBestsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: state.books.length,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: BestSellerListViewItem(
                      ImageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail!,
                      BookName: state.books[index].volumeInfo.title!,
                      auther: state.books[index].volumeInfo.authors![0]!,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is BestSellerBooksFailur) {
          return Text(state.ErrorMassage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
