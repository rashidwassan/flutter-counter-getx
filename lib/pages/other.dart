import 'package:flutter/material.dart';
import 'package:flutter_counter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({Key? key}) : super(key: key);

  // as we already created instance, now we will find that instance to use it.
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                _counterController.increment();
              },
              child: const Text('Increment Counter')),
          ElevatedButton(
              onPressed: () {
                // getting back to previous screen
                // without getX: Navigator.of(context).pop();
                Get.back();
              },
              child: const Text('Go Back'))
        ],
      )),
    );
  }
}
