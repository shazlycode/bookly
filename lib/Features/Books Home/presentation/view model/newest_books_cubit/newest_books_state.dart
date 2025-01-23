import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';

abstract class NewestBooksState {}

class InitialNewestBooksState extends NewestBooksState {}

class LoadingNewestBooksState extends NewestBooksState {}

class SuccessNewestBooksState extends NewestBooksState {
  final List<BookModel> books;

  SuccessNewestBooksState({required this.books});
}

class FailureNewestBooksState extends NewestBooksState {
  final String? errorMessage;
  FailureNewestBooksState({required this.errorMessage});
}
