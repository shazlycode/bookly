import 'package:bookly/Core/utilis/app_router.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/newest_books_cubit/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
          builder: (context, state) {
        if (state is SuccessNewestBooksState) {
          return ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => context.push(
                      AppRouter.kBookDetailsScreenViewPath,
                      extra: state.books[index]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: BookItem(book: state.books[index]),
                  ),
                );
              });
        } else if (state is FailureNewestBooksState) {
          return Center(
            child: Text(state.errorMessage!),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
