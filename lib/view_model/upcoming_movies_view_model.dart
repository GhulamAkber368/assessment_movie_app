import 'package:assessment_movie_app/data/response/api_response.dart';
import 'package:assessment_movie_app/model/upcoming_movies_model.dart';
import 'package:flutter/cupertino.dart';

import '../respository/upcoming_movies_repository.dart';

class UpComingMoviesViewModel with ChangeNotifier {
  final _myRepo = UpComingMoviesRepository();

  ApiResponse<UpComingMoviesModel> upComingMoviesList = ApiResponse.loading();

  setUpComingMoviesList(ApiResponse<UpComingMoviesModel> response) {
    upComingMoviesList = response;
    notifyListeners();
  }

  Future<void> fetchUpComingMoviesListApi() async {
    setUpComingMoviesList(ApiResponse.loading());
    _myRepo.fetchUpComingMoviesList().then((value) {
      setUpComingMoviesList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setUpComingMoviesList(ApiResponse.error(error.toString()));
    });
  }
}
