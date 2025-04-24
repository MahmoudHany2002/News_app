import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:neapp/service/news_service.dart';
import 'package:neapp/views/home_view.dart';

void main() {
  
  
  
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeView() ,
    );
  }
}
