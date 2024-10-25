import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Models/repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());
  HomeRepo homeRepo;

  Future<void> featchBeastSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.featchBeastSellerBooks();
    result.fold(
      (fulier) {
        emit(BestSellerBooksFailur(fulier.errMessage));
      },
      (Books) {
        emit(BestSellerBooksSuccess(Books));
      },
    );
  }
}
