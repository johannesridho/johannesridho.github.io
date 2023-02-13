import 'package:flutter/material.dart';

import 'helper.dart';

class CommonContainer extends StatelessWidget {
  final List<Widget> children;

  const CommonContainer({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    getResponsivePadding(double width) {
      if (isMobile(width)) {
        return width * 0.05;
      }
      if (isTablet(width)) {
        return width * 0.2;
      }
      return width * 0.3;
    }

    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: getResponsivePadding(width)),
      itemBuilder: (BuildContext context, int index) {
        return children[index];
      },
      separatorBuilder: (BuildContext context, int index) => const Divider
        (height: 60, thickness: 1),
      itemCount: children.length,
    );
  }
}
