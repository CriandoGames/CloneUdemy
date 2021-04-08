import 'package:flutter/material.dart';
import 'package:responsividade/pages/Home/widget/sections/Advance/advance_section.dart';
import 'package:responsividade/pages/Home/widget/sections/top_section.dart';

import '/breakpoints/break_points.dart';
import '/pages/Home/widget/appBar/mobile_appbar.dart';
import 'widget/appBar/web_app_bar.dart';
import 'widget/sections/Courses/courses_sections.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.biggest);
      print(constraints.smallest);

      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth <= mobileBreakPoint
            ? PreferredSize(
                child: MobileAppbar(),
                preferredSize: Size(double.infinity, 56),
              )
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(double.infinity, 60),
              ),
        drawer: constraints.maxWidth <= mobileBreakPoint ? Drawer() : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1400,
            ),
            child: ListView(
              children: [
                TopSection(),
                AdvanceSection(),
                CoursesSection()
              ],
            ),
          ),
        ),
      );
    });
  }
}
