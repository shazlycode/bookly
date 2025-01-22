import 'package:bookly/Core/utilis/text_styles.dart';
import 'package:flutter/material.dart';

import 'books_list_view.dart';
import 'custom_book_screen_view_app_bar.dart';
import 'similar_book_list.dart';

class BookScreenViewBody extends StatelessWidget {
  const BookScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBookScreenViewAppBar(),
                BooksListView(),
                const SizedBox(
                  height: 49,
                ),
                Text("Best Seller", style: Styles.textStyle20),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: SimilarBookList(),
          )
        ],
      ),
    );
  }
}
