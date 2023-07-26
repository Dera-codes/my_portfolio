import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  final String text;
  const IntroCard({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      margin: EdgeInsets.all(25.0),
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
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
