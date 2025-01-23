import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> books;

  FeaturedBooksSuccessState({required this.books});
}

class FeaturedBooksFailueState extends FeaturedBooksStates {
  final String? errorMessage;
  FeaturedBooksFailueState({required this.errorMessage});
}
