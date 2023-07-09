import 'dart:convert';
import 'dart:io';

import 'package:assessment_movie_app/data/app_exceptions.dart';
import 'package:assessment_movie_app/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
      print("Response : ${response.body}");
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        print("Response 3: ${response.body}");
        if (response.body ==
            "{\"status\":400,\"message\":\"User Not found.\"}") {
          throw UserNotFoundException("");
        } else {
          dynamic responseJson = json.decode(response.body);

          print("Dynamic Response : ${responseJson}");
          return responseJson;
        }
      case 400:
        throw BadReqeustException("");
      case 404:
        print("${response.body}");
        throw UnauthorisedException("");
      case 500:
        throw BadReqeustException();
      default:
        print("Post Respone : ${response.body}");
        response.body ==
                "{\"error\":{\"email\":[\"The Selected email is already registered\"]}}"
            ? throw EmailAlreadyTakenException("This")
            : throw FetchDataException("");
    }
  }
}
