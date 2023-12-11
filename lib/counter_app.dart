


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_state_controller.dart';
import 'home_screen.dart';
import 'main.dart';

class CounterApp extends StatelessWidget {

  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: HomeScreen(),
      initialBinding: GetxDependencyBinder(),
    );
  }
}

class GetxDependencyBinder extends Bindings{

  // Get Dependency Manager
  // Code Against Abstraction  -> Dependency Injection -> Dependency Inversion
  @override
  void dependencies() {
    Get.put(CounterStateController());
  }

}

