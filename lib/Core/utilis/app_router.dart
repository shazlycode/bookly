import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Splash/presentation/views/splash_screen_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Books Home/presentation/views/book_details_sreen_view.dart';
import '../../Features/Books Home/presentation/views/book_screen_view.dart';

class AppRouter {
  static const kSplashScreenViewPath = "/";
  static const kBookScreenViewPath = "/book_screen_view";
  static const kBookDetailsScreenViewPath = "/book_details_screen_view";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreenViewPath,
        builder: (context, state) => SplashScreenView(),
      ),
      GoRoute(
          path: kBookScreenViewPath,
          builder: (context, state) => BookScreenView()),
      GoRoute(
        path: kBookDetailsScreenViewPath,
        builder: (context, state) => BookDetailsSreenView(
          bookModel: state.extra as BookModel,
        ),
      )
    ],
  );
}
