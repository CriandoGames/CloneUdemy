import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdvanceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.white, size: 50),
          const SizedBox(height: 16),
          Column(
            children: [
              Text(title,style:TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold)),
              Text(subtitle, style:TextStyle(color:Colors.white)),
            ]
          )
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color:Colors.blueGrey))
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantage("+45.000", "Didatica garantida"),
          buildAdvantage("+45.000", "Didatica garantida"),
          buildAdvantage("+45.000", "Didatica garantida"),
        ],
      ),
    );
  }
}