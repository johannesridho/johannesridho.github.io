import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class GasingEVO extends StatelessWidget {
  const GasingEVO({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Gasing EVO",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          const YoutubeVideo(videoID: 'e_IJqNmhdGA'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Gasing EVO is an action arcade game for mobile and PC made to mimic '
                  'Indonesian traditional game “Gasing”. The game has many features including multi-player mode, '
                  'voice command, and remote play. This game was nominated for “Best Student Game” in '
                  'Indonesia ICT Awards 2014.'),
            ]),
          ),
          projectDetailImage('gasing-evo-ultimate.png'),
          projectDetailImage('gasing-evo-menu.png'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(context, 'Download and try the app '),
              link(context, 'here',
                  'https://drive.google.com/file/d/1LeAqPrnDjdpKH9cajBfZkFhPLfswWbDs/view?usp=share_link'),
              text(context, '!')
            ]),
          ),
          projectDetailCodeAndTech(context, 'github.com/johannesridho/gasing-evo',
              'https://github.com/johannesridho/gasing-evo', 'Android, Desktop, Unity3D, C#'),
        ],
      ),
    );
  }
}
