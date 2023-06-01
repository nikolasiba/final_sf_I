import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quien_me_debe/home_page/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.blue[900],
            title: const Text('QUIEN ME DEBE ?'),
          ),
        ));
  }
}
