import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../common_widgets/youtube_video.dart';
import '../helper.dart';

class Pandoraverse extends StatelessWidget {
  const Pandoraverse({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Pandoraverse",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          const YoutubeVideo(videoID: 'n8FEU-vJO0U'),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Pandoraverse is a new universe designed to explore restaurants through Augmented Reality. '
                  'We can see the restaurants nearby, navigate to a specific restaurant, and see '),
              link(context, 'Foodpanda', 'https://www.foodpanda.com'),
              text(
                  context,
                  ' related marketing contents (such as vouchers, banners) placed in the real world through the '
                  'Augmented Reality technology. With this app, we won the Most Innovative and '
                  'the Best Presentation award at Delivery Hero Hackathon 2021.'
                  '\n\nCode: '),
              link(context, 'github.com/johannesridho/pandoraverse', 'https://github.com/johannesridho/pandoraverse'),
              text(context, '\nTechnologies: iOS, Swift, ARKit, Augmented Reality')
            ]),
          ),
        ],
      ),
    );
  }
}
