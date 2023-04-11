import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
