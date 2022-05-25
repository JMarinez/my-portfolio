import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_page.dart';

void main(List<String> args) {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(title: 'Portfolio Page'),
    );
  }
}
