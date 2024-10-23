part of 'future_books_cubit.dart';

sealed class FutureBooksState extends Equatable {
  const FutureBooksState();

  @override
  List<Object> get props => [];
}

final class FutureBooksInitial extends FutureBooksState {}

final class FutureBooksLoading extends FutureBooksState {}

final class FutureBooksfailuer extends FutureBooksState {
  String errorMassage;
  FutureBooksfailuer(this.errorMassage);
}

final class FutureBooksSuccess extends FutureBooksState {
  List<BookModel> books;
  FutureBooksSuccess(this.books);
}
