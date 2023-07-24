// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25.0),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.15),
                    offset: Offset(0, 15),
                    blurRadius: 25),
              ],
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(25)),
          child: Text('Welcome! My name is Chidera Nnamdi'),
        ),
      ),
    );
  }
}
