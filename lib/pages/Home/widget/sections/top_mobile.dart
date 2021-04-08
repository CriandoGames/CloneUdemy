import 'package:flutter/material.dart';

import '../custom_search_field.dart';

class TopMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 3.4,
          child: Image.network(
            "https://img-a.udemycdn.com/notices/web_banner/image_udlite/3d150abd-4480-485b-915a-73e08c04690a.jpg?GgRA6FKKb4U1eH4oZLPKcUV2CcT0E9ggO3YGohMEiiKW-IMicc8zihWaY2KKh8DOF5uElqKujmQtZrwMwxjRVi6wfXwqYMcjGkmOBDKmfKM8gwKDiUP-4LqNf-r5nd0cx_38HIf84qOhyrBqUnIESFTd0EfJBavfo4-7eT0orJj6iA_4YGuT",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text("Projeto Resposivo",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const SizedBox(height: 8),
              Text(
                  "Projeto Responsivo flutter, Curso por apenas R\$22,90, Qualidade garantida.",
                  style:
                  TextStyle(fontSize: 18, color: Colors.white)),
              const SizedBox(height: 50),
              CustomSearchField()
            ],
          ),
        )
      ],
    );
  }
}
