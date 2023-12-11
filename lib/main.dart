import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_state_controller.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 CounterStateController counterStateController = Get.put(CounterStateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child:  GetBuilder<CounterStateController>(
          builder: (controller) {
            return Text(controller.count.toString(), style: const TextStyle(
                fontSize: 24,
              ),);
          }
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterStateController.updateValue(1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

