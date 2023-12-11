import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_ostad_flutter/home_screen.dart';
import 'package:practice_ostad_flutter/third_screen.dart';
import 'package:get/get.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen '),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(ThirdScreen());
              },
              child: Text('Go to Third Screen'),
            ), ElevatedButton(

              onPressed: () {
                Get.offAll(HomeScreen());
                },
              child: Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
