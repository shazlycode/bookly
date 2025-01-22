import 'package:bookly/Core/utilis/api_service.dart';
import 'package:bookly/Core/errors/failure.dart';
import 'package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo.dart';
import 'package:bookly/Features/Books%20Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemets implements HomeRepo {
  late ApiService apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(endPoint: "volumes?q=api");
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
