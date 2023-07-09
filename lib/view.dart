import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  fetchData() async {
    // String url = "https://api.themoviedb.org/3/movie/upcoming";
    String url =
        "https://api.themoviedb.org/3/movie/upcoming?api_key=fc0caed7479de0b0e4903f7db9e2a650";
    // String apiKey = "123456abcdefg";
    String apiKey = "fc0caed7479de0b0e4903f7db9e2a650";

    final response = await http.get(
      Uri.parse(url),
      // headers: {"Authorization": "Bearer $apiKey"}
    );

    if (response.statusCode == 200) {
      print("Data ${response.body}");
    } else {
      print("Request Failded");
      print("Failed Data : ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                fetchData();
              },
              child: const Text("Get Data"))
        ],
      )),
    );
  }
}
