import 'package:flutter/material.dart';
import 'package:flutter_counter_getx/pages/home.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // using get material app instead or material app. This allows us to use features provided by 'get' package.
    return GetMaterialApp(
      // this code line removes the debug strip from app
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      home: HomeScreen(),
    );
  }
}
