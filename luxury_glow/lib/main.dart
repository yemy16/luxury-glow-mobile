import 'package:flutter/material.dart';
import 'screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxury Glow',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepPurple,
          secondary: Colors.deepPurple[400],
        ),
      ),
      home: MyHomePage(),
    );
  }
}
