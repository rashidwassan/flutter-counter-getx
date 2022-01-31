import 'package:flutter/material.dart';
import 'package:flutter_counter_getx/controllers/counter_controller.dart';
import 'package:flutter_counter_getx/pages/other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // creating an instance of CounterController as we will be using counter property and increment method
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Number of Taps'),
            // using the instance of controller to acces count's value
            Text(_counterController.count.value.toString()),
            // adding a bit of spacing (vertical)
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  Get.to(OtherScreen());
                },
                child: const Text('Open Other Screen'))
          ],
        ),
      ),
    );
  }
}
