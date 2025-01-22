import 'package:bookly/Core/utilis/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_item.dart';

class BookDataSection extends StatelessWidget {
  const BookDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
            height: 262,
            width: 192,
            child: Hero(tag: "hero", child: BookItem())),
        const SizedBox(
          height: 20,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle20,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              size: 18,
              FontAwesomeIcons.solidStar,
              color: Colors.amber,
            ),
            const SizedBox(width: 15),
            Text(
              "4.8",
              style: Styles.textStyle18,
            ),
            const SizedBox(width: 15),
            Opacity(
              opacity: .5,
              child: Text(
                "(2390)",
                style: Styles.textStyle14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
