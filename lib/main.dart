import 'package:flutter/material.dart';
import 'package:guia_pgx/app/views/base_view.dart';


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
          
          primarySwatch: Colors.blue,
        ),
        home:  BaseView());
  }
}
