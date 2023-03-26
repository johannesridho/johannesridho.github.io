import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class Patrons extends StatelessWidget {
  const Patrons({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Patrons",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          const YoutubeVideo(videoID: '84FZXeXRwjw'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'My team built this project to reinvent the way to visualize and display financial data by '
                  'leveraging the Virtual Reality technology. This project was selected as top 10 in '
                  'F10 Hackathon 2018, an international hackathon held by F10 in Singapore.'),
            ]),
          ),
          const YoutubeVideo(videoID: 'vOcFd6KMgco'),
          projectDetailCodeAndTech(context, 'github.com/Fakhri/vr-trading-prototype',
              'https://github.com/Fakhri/vr-trading-prototype', 'Virtual Reality, Javascript, Three.js'),
        ],
      ),
    );
  }
}
