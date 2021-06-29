import 'package:flutter/material.dart';
import 'package:learn_getx/controller/count_controller.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/main_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          title: 'Learn GetX',
          theme: mainController.isDark.value
              ? ThemeData.dark()
              : ThemeData.light(),
          home: MyHomePage(title: 'Learn GetX'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    final countController = Get.put(CountController());
    final theme = Get.find<MainController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Obx(() => Center(
              child: Text("this number ${countController.thisNumber}"),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () => theme.changeTheme(),
      ),
    );
  }
}
