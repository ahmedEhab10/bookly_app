import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  final String _base = 'https://www.googleapis.com/books/v1/';

  Future<dynamic> getallBook({required String endPoint}) async {
    final response = await dio.get('$_base$endPoint');

    return response.data;
  }
}
