import 'package:flutter/material.dart';
import 'views/swipe_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MatchApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SwipeView(),
    );
  }
}
