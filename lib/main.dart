import 'package:flutter/material.dart';
import 'package:post_test/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Login(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: const Color(0xFF1F1F1F),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
