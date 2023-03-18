import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class Comet extends StatelessWidget {
  const Comet({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Comet",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          projectDetailImage('comet.png'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Comet is an offline payment solution that leverages the power of blockchain. This project was '
                  'selected as the top 4 at Blockchain category in UnitedByHCL Hackathon 2017. Comet consists '
                  'of an Android app which was built with Kotlin, a frontend web which was built with React, '
                  'a backend which was built with Node.js, and a blockchain network which was built with '
                  'Ethereum test network.')
            ]),
          ),
          const YoutubeVideo(videoID: 'AM1srHZjEQI'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(context, 'Code: '),
              link(context, 'github.com/tsambora/COMET', 'https://github.com/tsambora/COMET'),
              text(context, '\nTechnologies: Blockchain (Ethereum Solidity), Web, Android, Node.js, React, Kotlin')
            ]),
          ),
        ],
      ),
    );
  }
}
