import 'package:bookly_app/Core/errors/failuers.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BookModel>>> featchBeastSellerBooks();
  Future<Either<Failuers, List<BookModel>>> featchfeatureBooks();
}
