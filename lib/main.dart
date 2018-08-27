import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}