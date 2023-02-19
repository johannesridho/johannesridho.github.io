import 'package:flutter/material.dart';

import 'helper.dart';

class CommonContainer extends StatelessWidget {
  final List<Widget> children;
  final bool? disableSeparator;

  const CommonContainer({
    super.key,
    required this.children,
    this.disableSeparator = false,
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
      separatorBuilder: (BuildContext context, int index) => 
        disableSeparator! ? const Divider(height: 30, color: Colors.transparent) : const Divider(height: 60, thickness:
        1),
      itemCount: children.length,
    );
  }
}
