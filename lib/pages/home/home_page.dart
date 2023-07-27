// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/Cards/header/headers.dart';
import 'package:my_portfolio/widgets/Cards/intro_card.dart';
import 'package:my_portfolio/widgets/Cards/project_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Projects",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                ProjectCard(
                  projectName: "My Project",
                  projectYear: 2022,
                  projectDescription:
                      "Et laboris minim culpa commodo sit incididunt proident anim et. Ut esse ex duis consequat nostrud veniam sint ex culpa sunt ad irure amet quis. Aute cupidatat cillum aute magna nulla reprehenderit ad. Sit proident reprehenderit aute et mollit laborum esse incididunt et amet nulla.",
                  projectImage:
                      "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
