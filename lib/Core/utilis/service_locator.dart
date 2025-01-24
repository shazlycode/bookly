import "package:bookly/Core/utilis/api_service.dart";
import "package:bookly/Features/Books%20Home/data/Home%20Repos/home_repo_implemets.dart";
import "package:dio/dio.dart";
import "package:get_it/get_it.dart";

final getIt = GetIt.instance;

void setupGetItSingltone() {
  getIt.registerSingleton<HomeRepoImplemets>(
      HomeRepoImplemets(apiService: ApiService(Dio())));
}
