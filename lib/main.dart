import 'category_route.dart';
import 'package:hello_rectangle/category.dart';
import 'package:flutter/material.dart';

//  The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

// This widget is the root of our application.
//
// The first screen we see is a list [Categories], each of which
// has a list of [Unit]s.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryRoute(),
    );
  }
}
