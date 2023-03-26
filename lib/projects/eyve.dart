import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class Eyve extends StatelessWidget {
  const Eyve({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Eyve",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          const YoutubeVideo(videoID: 'z-6UOWPExp8'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Eyve is built to protect people with visual impairments in their daily life with computer vision '
                  'and voice recognition. This project won the 3rd place in AWS Hackdays Final Hackathon 2019.'),
            ]),
          ),
          projectDetailCodeAndTech(
              context,
              'github.com/Fakhri/eyve',
              'https://github.com/Fakhri/eyve',
              'Serverless, Go, '
                  'Javascript, '
                  'Facebook Messenger, Amazon Web Service technologies (Rekognition, SageMaker, Elastic Beanstalk, S3, '
                  'Lambda)'),
        ],
      ),
    );
  }
}
