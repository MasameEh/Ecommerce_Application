import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    HomeControllerImpl controller = Get.put(HomeControllerImpl());
    return const Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
