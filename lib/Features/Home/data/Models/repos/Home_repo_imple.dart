import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Core/errors/failuers.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Models/repos/Home_repo.dart';
import 'package:dartz/dartz.dart';

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
      return left(servier_failuer());
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> featchfeatureBooks() {
    // TODO: implement featchfeatureBooks
    throw UnimplementedError();
  }
}
