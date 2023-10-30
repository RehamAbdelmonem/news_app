import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';

void main() {
  runApp(const MyApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=694c899b10ce497385f478dff6e6e0a0&country=us');
  print(response);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome()
    );
  }
}
