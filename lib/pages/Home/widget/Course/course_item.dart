import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network('https://img-b.udemycdn.com/course/100x100/1680660_7997_3.jpg', fit: BoxFit.fill,
          height: 150,),
          const SizedBox(height: 4),
          Flexible(
            child: AutoSizeText(
                "Logica de programação para unity.",
                style:
                TextStyle(fontSize: 14, color: Colors.white)),
          ),
          AutoSizeText(
              "Carlos Carlos.",
              style:
              TextStyle(color: Colors.grey)),
          AutoSizeText(
              "R\$: Free.",
              style:
              TextStyle(fontSize: 14, color: Colors.white)),
        ],
    );
  }
}
