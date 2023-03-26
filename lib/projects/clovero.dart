import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class Clovero extends StatelessWidget {
  const Clovero({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Clovero",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          const YoutubeVideo(videoID: 'WfSYXDp796E'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Clovero is an Indonesian culture themed word guessing game run on top of Line chatbot platform.'
                  'This project was selected as the top 50 in Line Chatbot Competition 2017.'),
            ]),
          ),
          projectDetailCodeAndTech(context, 'github.com/johannesridho/clovero',
              'https://github.com/johannesridho/clovero', 'Chatbot, Java, Spring Framework, MySQL'),
        ],
      ),
    );
  }
}
