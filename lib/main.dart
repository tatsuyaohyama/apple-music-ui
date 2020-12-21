import 'package:apple_music_ui/screens/library_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple Music UI',
      debugShowCheckedModeBanner: false,
      home: LibraryScreen(),
    );
  }
}
