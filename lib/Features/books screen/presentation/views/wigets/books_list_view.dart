import 'package:bookly/Core/utilis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => GoRouter.of(context)
                  .push(AppRouter.kBookDetailsScreenViewPath),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Hero(tag: "hero1", child: BookItem()),
              ),
            );
          }),
    );
  }
}
