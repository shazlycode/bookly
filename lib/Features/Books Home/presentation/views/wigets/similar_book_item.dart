import 'dart:math';

import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utilis/constants.dart';
import '../../../../../Core/utilis/text_styles.dart';

class SimilarBookItem extends StatelessWidget {
  const SimilarBookItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
              height: 107,
              width: 70,
              child: CachedNetworkImage(
                  imageUrl: book.volumeInfo!.imageLinks!.thumbnail!)),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
            child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                book.volumeInfo!.title!,
                maxLines: 2,
                style: Styles.textStyle20,
              ),
              Text(
                book.volumeInfo!.authors![0],
                style: Styles.textStyle14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Free",
                    maxLines: 2,
                    style: Styles.textStyle20,
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                  ),
                  Text(
                    (1 + Random().nextDouble() * 5 - 1).toStringAsFixed(2),
                    style: Styles.textStyle18,
                  ),
                  Opacity(
                    opacity: .5,
                    child: Text(
                      "${Random().nextInt(3000)}",
                      style: Styles.textStyle14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
