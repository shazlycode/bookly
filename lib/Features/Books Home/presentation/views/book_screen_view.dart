import 'package:flutter/material.dart';

import 'wigets/book_screen_view_body.dart';

class BookScreenView extends StatelessWidget {
  const BookScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookScreenViewBody()),
    );
  }
}
