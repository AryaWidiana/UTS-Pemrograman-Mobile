import 'package:flutter/material.dart';
import 'screens/kitsufest_screen.dart';

void main() {
  runApp(const KitsufestApp());
}

class KitsufestApp extends StatelessWidget {
  const KitsufestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KitsufestScreen(),
    );
  }
}
