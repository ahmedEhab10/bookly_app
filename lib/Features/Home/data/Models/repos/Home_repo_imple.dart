import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Core/errors/failuers.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Models/repos/Home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple implements HomeRepo {
  ApiService apiService;
  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failuers, List<BookModel>>> featchBeastSellerBooks() async {
    try {
      List<BookModel> Books = [];
      var data = await apiService.getallBook(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      for (var item in data['items']) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> featchfeatureBooks() async {
    try {
      List<BookModel> Books = [];
      var data = await apiService.getallBook(
          endPoint: 'volumes?q=flowers&filter=free-ebooks');
      for (var item in data['items']) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
