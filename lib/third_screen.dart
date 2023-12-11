import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_ostad_flutter/second_screen.dart';
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thirds Screen '),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {

                Get.to(SecondScreen());
              },
              child: Text('Go to Second Screen'),
            ), ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Go HOMEto Home'),
            ),
          ],
        ),
      ),
    );
  }
}
