import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class Aident extends StatelessWidget {
  const Aident({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Aident",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          const YoutubeVideo(videoID: 'ouTdvoKeZaE'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Aident detects crime behaviours and recognises criminal suspects in videos by using AWS technology. '
                  'This project won the 1st place in AWS Hackdays 2019 Indonesia.'),
            ]),
          ),
          projectDetailCodeAndTech(
              context,
              'github.com/johannesridho/aident',
              'https://github.com/johannesridho/aident',
              'Serverless, Go, '
                  'Javascript, '
                  'Facebook Messenger, Amazon Web Service technologies (Rekognition, SageMaker, Elastic Beanstalk, S3, '
                  'Lambda)'),
        ],
      ),
    );
  }
}
