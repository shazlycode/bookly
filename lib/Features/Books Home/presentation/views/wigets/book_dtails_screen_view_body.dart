import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'book_button_section.dart';
import 'book_data_section.dart';
import 'book_details_footer_secion.dart';
import 'custom_book_etails_screen_view_app_bar.dart';

class BookDetailsScreenViewBody extends StatelessWidget {
  const BookDetailsScreenViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Column(
          children: [
            CustomBookDetailsScrenViewAppBar(),
            BookDataSection(book: book),
            BookButtonSection(),
            BookDtailsFooterSection(),
          ],
        ),
      )
    ]);
  }
}
