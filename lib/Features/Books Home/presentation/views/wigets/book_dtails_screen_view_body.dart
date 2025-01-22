import 'package:flutter/material.dart';
import 'book_button_section.dart';
import 'book_data_section.dart';
import 'book_details_footer_secion.dart';
import 'custom_book_etails_screen_view_app_bar.dart';

class BookDetailsScreenViewBody extends StatelessWidget {
  const BookDetailsScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Column(
          children: [
            CustomBookDetailsScrenViewAppBar(),
            BookDataSection(),
            BookButtonSection(),
            BookDtailsFooterSection(),
          ],
        ),
      )
    ]);
  }
}
