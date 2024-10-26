import 'package:bookly_app/Features/Home/Presintion/View_Models/Future_Books_Cubit/future_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presintion/Views/Widgets/Custom_List_View_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class futureListView extends StatelessWidget {
  futureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FutureBooksCubit, FutureBooksState>(
      builder: (context, state) {
        if (state is FutureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.0),
                    child: CustomListViewItem(
                        ImageUrl: state
                            .books[index].volumeInfo.imageLinks.thumbnail!),
                  );
                }),
          );
        } else if (state is FutureBooksfailuer) {
          return Text(state.errorMassage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
