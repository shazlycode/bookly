import 'package:bookly/Core/utilis/api_service.dart';
import 'package:bookly/Core/utilis/app_router.dart';
import 'package:bookly/Core/utilis/constants.dart';
import 'package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo.dart';
import 'package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo_implemets.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => NewestBooksCubit(
                HomeRepoImplemets(apiService: ApiService(Dio())))
              ..fetchNewestBooks()),
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                HomeRepoImplemets(apiService: ApiService(Dio())))
              ..fetchFeaturedBooks())
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: kScaffoldBackgroundColor),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
