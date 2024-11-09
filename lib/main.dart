import 'package:flutter/material.dart';
import 'package:kickstash/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KickStash',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(secondary: Colors.grey[800]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
