import 'package:assessment_movie_app/theme/theme.dart';
import 'package:assessment_movie_app/view.dart';
import 'package:assessment_movie_app/view_model/upcoming_movies_view_model.dart';
import 'package:assessment_movie_app/views/main_view/main_view.dart';
import 'package:assessment_movie_app/views/movie_details_view/movie_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white));
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UpComingMoviesViewModel())
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: lightTheme,
          home: const MainView(),
        ));
  }
}
