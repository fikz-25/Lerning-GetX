import 'package:get/get.dart';

class CountController extends GetxController {
  var thisNumber = 0.obs;

  void increment() => thisNumber++;
  void decrement() => thisNumber--;
}
