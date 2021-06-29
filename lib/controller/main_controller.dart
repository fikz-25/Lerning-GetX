import 'package:get/get.dart';

class MainController extends GetxController {
  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;
}
