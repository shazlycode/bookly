import 'package:flutter/material.dart';

import '../../../../../Core/utilis/text_styles.dart';
import 'books_list_view.dart';

class BookDtailsFooterSection extends StatelessWidget {
  const BookDtailsFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 7,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text("You Can Also Like", style: Styles.textStyle14)),
        SizedBox(height: 120, child: BooksListView()),
      ],
    );
  }
}
