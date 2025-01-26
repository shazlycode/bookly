import 'package:bookly/Core/utilis/text_styles.dart';
import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/Features/Books%20Home/presentation/views/wigets/similar_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          SimilarBookList(),
        ],
      ),
    );
  }
}
