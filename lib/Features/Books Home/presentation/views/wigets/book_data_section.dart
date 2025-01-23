import 'package:bookly/Core/utilis/text_styles.dart';
import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_item.dart';

class BookDataSection extends StatelessWidget {
  const BookDataSection({super.key, required this.book});
  final BookModel book;

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
            child: Hero(
                tag: book.id!,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: book.volumeInfo!.imageLinks!.thumbnail!),
                ))),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo!.title!,
          style: Styles.textStyle20,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          book.volumeInfo!.authors![0],
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
