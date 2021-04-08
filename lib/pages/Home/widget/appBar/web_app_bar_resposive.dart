import 'package:flutter/material.dart';

class WebAppBarResposiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey)),
              child: Row(children: [
                const SizedBox(width: 4),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.grey[500],
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Pesquise Alguma coisa aqui !",
                        isCollapsed: true),
                  ),
                )
              ]),
            ),
          ),
          if(constraints.maxWidth >= 400)...[
            const SizedBox(width: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text("Aprender", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                // background
              ),
            ),
          ],

          if(constraints.maxWidth >= 500)...[
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              child: Text("by: Carlos Castro", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                // background
              ),
            ),
          ]

        ],
      );
    });
  }
}
