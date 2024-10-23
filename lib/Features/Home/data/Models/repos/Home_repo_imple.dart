import 'package:bookly_app/Core/errors/failuers.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Models/repos/Home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  @override
  Future<Either<Failuers, List<BookModel>>> featchBeastSellerBooks() {
    // TODO: implement featchBeastSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuers, List<BookModel>>> featchfeatureBooks() {
    // TODO: implement featchfeatureBooks
    throw UnimplementedError();
  }
}
