import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1ed760)),
        useMaterial3: true,
        fontFamily: 'Gotham'
      ),
      home: HomeScreen(),
    );
  }
}