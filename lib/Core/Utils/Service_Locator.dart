import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Features/Home/data/Models/repos/Home_repo_imple.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<HomeRepoImple>(
    HomeRepoImple(
      getIt.get<ApiService>(),
    ),
  );
}
