import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'similar_book_item.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccessState) {
        return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SimilarBookItem(book: state.books[index]),
              );
            });
      } else if (state is FeaturedBooksFailueState) {
        return Center(
          child: Text(state.errorMessage!),
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
