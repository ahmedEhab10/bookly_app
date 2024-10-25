import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Models/repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'future_books_state.dart';

class FutureBooksCubit extends Cubit<FutureBooksState> {
  FutureBooksCubit({required this.homeRepo}) : super(FutureBooksInitial());
  HomeRepo homeRepo;

  Future<void> featchfeatureBooks() async {
    emit(FutureBooksLoading());
    var result = await homeRepo.featchfeatureBooks();
    result.fold(
      (fulier) {
        emit(FutureBooksfailuer(fulier.errMessage));
      },
      (Books) {
        emit(FutureBooksSuccess(Books));
      },
    );
  }
}
