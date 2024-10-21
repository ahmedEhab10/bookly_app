import 'package:bookly_app/Features/Home/Presintion/Views/Home_Screen.dart';
import 'package:bookly_app/Features/Splash/Presentaion/View/Spalsh_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SpalshView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
