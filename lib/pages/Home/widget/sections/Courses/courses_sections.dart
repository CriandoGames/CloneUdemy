import 'package:flutter/material.dart';
import 'package:responsividade/breakpoints/break_points.dart';
import 'package:responsividade/pages/Home/widget/Course/course_item.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_,constraints){
        return GridView.builder(
            gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent:300,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16
            ),
            padding: EdgeInsets.symmetric(vertical: 16,horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16),
            shrinkWrap: true,
            itemCount: 20,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return CourseItem();
            });
    });
  }
}
