import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home screen")),

      // body: Center(child: Text("Welcome To Home Screen - page 2")),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Go Back"),
      ),
    );
  }
}
