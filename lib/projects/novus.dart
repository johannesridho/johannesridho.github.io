import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class Novus extends StatelessWidget {
  const Novus({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Novus",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          projectDetailImage('novus.png'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Novus is a new social network where people can see other people’s Augmented Reality contents '
                  'attached to the objects around their location. Novus was built to drive people to go '
                  'outside and do more offline interaction with other people around their location. It can '
                  'lead people to form a new community, based on contents and interests around their location. '
                  'My team built Novus in F8 Hackathon 2018.'
                  '\n\nMy teammate wrote about the idea here: '),
              link(context, 'https://medium.com/@tsambora/startup-idea-s-ar-internet-c2dc8a851531',
                  'https://medium.com/@tsambora/startup-idea-s-ar-internet-c2dc8a851531'),
              text(context, '.'),
            ]),
          ),
          const YoutubeVideo(videoID: 'TXMKEuwq9Lo'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(context, 'Code: '),
              link(context, 'github.com/johannesridho/novus', 'https://github.com/johannesridho/novus'),
              text(context, '\nTechnologies: Augmented Reality, Android, Unity3D, Vuforia, Facebook Login')
            ]),
          ),
        ],
      ),
    );
  }
}
