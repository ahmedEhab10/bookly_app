import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'future_books_state.dart';

class FutureBooksCubit extends Cubit<FutureBooksState> {
  FutureBooksCubit() : super(FutureBooksInitial());
}
