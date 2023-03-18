import 'package:flutter/material.dart';

import 'body.dart';
import 'helper.dart';
import 'project_item.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final projectItems = <ProjectItem>[
      const ProjectItem(
        img: 'images/project_thumbnails/pandoraverse.webp',
        title: 'Pandoraverse',
        subtitle: 'A new universe designed to explore restaurants through Augmented Reality',
        url: 'pandoraverse',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/campaign.webp',
        title: 'Foodpanda Campaign Carousel',
        subtitle: 'Location-based campaign',
        url: 'foodpanda-campaign-carousel',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/comet.webp',
        title: 'Comet',
        subtitle: 'An offline payment solution that leverages the power of blockchain',
        url: 'comet',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/ceki.webp',
        title: 'Ceki',
        subtitle: 'We built a QR code payment solution before it was cool',
        url: 'ceki',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/gasing-battle.webp',
        title: 'Gasing Battle',
        subtitle:
            'An Android game where the player controls a Gasing, a traditional toy from Indonesia, to battle with another player by tilting the mobile phone',
        url: 'gasing-battle',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/novus.webp',
        title: 'Novus',
        subtitle:
            'A new social network where people can see other people’s Augmented Reality contents attached to the objects around their location',
        url: 'novus',
      ),
    ];

    double width = MediaQuery.of(context).size.width;

    var row = isMobile(width) ? 1 : isTablet(width) ? 2 : 3;
    var col = projectItems.length ~/ row;

    var items = List.generate(col, (colIdx) =>
        Row(children: List.generate(row, (rowIdx) => projectItems[colIdx * row + rowIdx])));

    return Body(
      title: "Projects",
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(height: 50),
        itemCount: items.length,
      ),
    );
  }
}

