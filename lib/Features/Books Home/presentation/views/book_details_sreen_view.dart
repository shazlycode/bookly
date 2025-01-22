import 'package:flutter/material.dart';

import 'wigets/book_dtails_screen_view_body.dart';

class BookDetailsSreenView extends StatelessWidget {
  const BookDetailsSreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsScreenViewBody()),
    );
  }
}
