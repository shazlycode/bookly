import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'wigets/book_dtails_screen_view_body.dart';

class BookDetailsSreenView extends StatelessWidget {
  const BookDetailsSreenView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsScreenViewBody(book: bookModel)),
    );
  }
}
