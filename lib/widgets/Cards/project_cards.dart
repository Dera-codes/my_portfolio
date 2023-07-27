import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

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
              const Text(
                "My Project",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(5.0),
                child: const Text(
                  "2022",
                  style: TextStyle(
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
                "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            ""
            "Cillum eu excepteur ut ut mollit cupidatat in dolore. Fugiat pariatur officia enim pariatur do est exercitation cillum enim eu id do eu sint. Laborum do consequat cillum enim officia aliqua dolor sunt nisi consectetur consequat eiusmod culpa. Eiusmod ipsum pariatur sunt amet ut commodo commodo ut Lorem. Lorem ea fugiat excepteur dolor ullamco."
            "",
            maxLines: 3,
            style: TextStyle(
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
