import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Hero(
          tag: book.id!,
          child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: book.volumeInfo!.imageLinks!.thumbnail!),
        ),
      ),
    );
  }
}
