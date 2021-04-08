import 'package:flutter/material.dart';
import 'package:responsividade/breakpoints/break_points.dart';
import 'package:responsividade/pages/Home/widget/sections/top_mobile.dart';
import 'package:responsividade/pages/Home/widget/sections/top_tablet.dart';
import 'package:responsividade/pages/Home/widget/sections/top_web.dart';

import '../custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakPoint ) return TopWeb();
        if (maxWidth >= mobileBreakPoint) return TopTablet();

        return TopMobile();
      },
    );
  }
}
