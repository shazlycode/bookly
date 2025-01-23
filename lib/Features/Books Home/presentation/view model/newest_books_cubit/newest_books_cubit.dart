import 'package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo.dart';
import 'package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo_implemets.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImplemets) : super(InitialNewestBooksState());
  final HomeRepoImplemets homeRepoImplemets;

  Future<void> fetchNewestBooks() async {
    emit(LoadingNewestBooksState());
    final result = await homeRepoImplemets.fetchNewestBooks();
    result.fold((f) {
      emit(FailureNewestBooksState(errorMessage: f.errorMessage));
    }, (books) {
      emit(SuccessNewestBooksState(books: books));
      return books;
    });
  }
}
