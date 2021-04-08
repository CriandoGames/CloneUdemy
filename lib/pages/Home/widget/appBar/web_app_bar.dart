import 'package:flutter/material.dart';
import 'package:responsividade/pages/Home/widget/appBar/web_app_bar_resposive.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text("AppBar Web"),
          const SizedBox(width: 20),
          Expanded(child: WebAppBarResposiveContent()),
          const SizedBox(width: 32),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),

          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Fazer Login", style: TextStyle(color: Colors.white)),
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2)),
            ),
          ),
          const SizedBox(width: 8),

          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Cadastre-se", style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // background
              ),
            ),
          )
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
      toolbarHeight: 72,
    );
  }
}
