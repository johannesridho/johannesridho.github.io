import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../helper.dart';

class Qololo extends StatelessWidget {
  const Qololo({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Qololo",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          projectDetailImage("qololo.png"),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Qololo is a marketplace website for art designer. This project is my first attempt in doing '
                  'a startup. In the end, we have 89 users, 168 designs submitted, 3727 Twitter followers, '
                  '2332 Instagram followers, 742 email subscriber, and 309 likes in Facebook.'),
            ]),
          ),
          projectDetailCodeAndTech(context, '', '', 'Web, Wordpress, PHP'),
        ],
      ),
    );
  }
}
