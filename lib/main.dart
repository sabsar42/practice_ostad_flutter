import 'dart:html';

import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData.light(),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.amberAccent,
            elevation: 5,
            shadowColor: Color(0xFF510622)
        ),
      ),
      themeMode: ThemeMode.light,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Declare a boolean variable to hold the switch state
    bool switchValue = false;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: <Widget>[
          // Add a switch widget to the AppBar
          Align(
            child: Transform.scale(
              alignment: Alignment.topCenter,
              scale: 1.5, // Adjust the scale factor to change the size
              child: Switch(
                value: switchValue,
                onChanged: (newValue) {
                  // Toggle between light and dark themes
                  final themeMode =
                  newValue ? ThemeMode.dark : ThemeMode.light;
                  // Handle switch state changes
                  // You can update the switchValue variable or perform any actions here
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

