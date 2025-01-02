import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/pages/detail/detail_page.dart';
import 'package:flutter_movie_info_app/pages/home/home_page.dart';
import 'package:flutter_movie_info_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      // theme: lightTheme,
      darkTheme: darkTheme,
      home:
          // HomePage(),
          DetailPage(),
    );
  }
}
