import 'package:bookly/Core/utilis/app_router.dart';
import 'package:bookly/Core/utilis/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: kScaffoldBackgroundColor),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
