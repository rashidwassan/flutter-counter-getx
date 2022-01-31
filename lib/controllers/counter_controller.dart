import 'package:get/get.dart';

// counter controller will be responsible for state management
class CounterController extends GetxController {
  // counter state, made it observable.
  var count = 0.obs;

  // increment function
  increment() => count++;
}
