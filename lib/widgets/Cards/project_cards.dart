import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final int projectYear;
  final String projectImage;
  final String projectDescription;
  const ProjectCard(
      {required this.projectName,
      required this.projectYear,
      this.projectImage =
          "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      required this.projectDescription,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 15),
              color: Colors.black.withOpacity(.15),
              blurRadius: 15,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                projectName,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  projectYear.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ClipRRect(
              child: Image.network(
                projectImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            projectDescription,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
