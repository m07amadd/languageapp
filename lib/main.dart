import 'package:flutter/material.dart';
import 'package:tukuapp/screens/home_page.dart';

void main() {
  runApp(const tukuApp());
}
class tukuApp extends StatelessWidget {
  const tukuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
      home: homePage()
    );
  }
}
