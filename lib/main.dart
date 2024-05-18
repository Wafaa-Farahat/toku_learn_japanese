import 'package:flutter/material.dart';
import 'package:toku_setup/screens/home_page.dart';

void main() {
  runApp(const TokuApp ());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}