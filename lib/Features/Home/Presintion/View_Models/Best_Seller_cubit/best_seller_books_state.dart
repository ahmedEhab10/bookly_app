part of 'best_seller_books_cubit.dart';

sealed class BestSellerBooksState extends Equatable {
  const BestSellerBooksState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksInitial extends BestSellerBooksState {}

final class BestSellerBooksLoading extends BestSellerBooksState {}

final class BestSellerBooksFailur extends BestSellerBooksState {
  String ErrorMassage;
  BestSellerBooksFailur(this.ErrorMassage);
}

final class BestSellerBooksSuccess extends BestSellerBooksState {
  List<BookModel> books;
  BestSellerBooksSuccess(this.books);
}
