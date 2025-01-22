import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../Core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
