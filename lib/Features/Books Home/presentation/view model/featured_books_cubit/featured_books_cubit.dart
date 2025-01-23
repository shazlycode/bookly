import 'package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo.dart';
import 'package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo_implemets.dart';
import 'package:bookly/Features/Books%20Home/presentation/view%20model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepoImplement)
      : super(FeaturedBooksInitialState());

  final HomeRepoImplemets homeRepoImplement;
  Future fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    final result = await homeRepoImplement.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailueState(errorMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books: books));
    });
  }
}
