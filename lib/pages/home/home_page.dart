// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(25.0),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.5),
                    offset: Offset(0, 10),
                    blurRadius: 15),
              ],
              border: Border.all(color: Colors.green, width: 5),
              borderRadius: BorderRadius.circular(25)),
          child: Text('my text'),
        ),
      ),
    );
  }
}
