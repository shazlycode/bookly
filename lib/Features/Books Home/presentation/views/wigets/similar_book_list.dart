import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'similar_book_item.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return SimilarBookItem(book: state.books[index]);
            }, childCount: state.books.length),
          );
        } else if (state is FeaturedBooksFailueState) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.errorMessage!),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
