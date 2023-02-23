import 'package:flutter/material.dart';
import 'package:guia_pgx/app/views/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Guia Comercial PGX',
        theme: ThemeData(
          
          primaryColor: Colors.red[50],
          primarySwatch: Colors.yellow,
        ),
        home: const HomePageView());
  }
}
