import 'dart:convert';

import 'package:assessment_movie_app/data/network/base_api_services.dart';
import 'package:assessment_movie_app/model/upcoming_movies_model.dart';
import 'package:assessment_movie_app/utils/app_urls.dart';
import '../data/network/network_api_services.dart';

class UpComingMoviesRepository {
  final BaseApiServices _apiServices = NetworkApiService();
  Future<UpComingMoviesModel> fetchUpComingMoviesList() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrls.upComingMovies);
      print("Response 5 : $response");
      response = UpComingMoviesModel.fromJson(response);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
