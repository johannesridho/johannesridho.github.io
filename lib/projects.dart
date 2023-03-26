import 'package:flutter/material.dart';

import 'body.dart';
import 'helper.dart';
import 'project_item.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final projectItems = [
      const ProjectItem(
        img: 'images/project_thumbnails/pandoraverse.webp',
        title: 'Pandoraverse',
        subtitle: 'A new universe designed to explore restaurants through Augmented Reality',
        url: 'pandoraverse',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/campaign.webp',
        title: 'Foodpanda Campaign Carousel',
        subtitle: 'A high performance location-based campaign built with Geohash index',
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
        img: 'images/project_thumbnails/gasing-evo.webp',
        title: 'Gasing Evo',
        subtitle:
            'Gasing EVO is an action arcade game for mobile and PC made to mimic Indonesian traditional game “Gasing”',
        url: 'gasing-evo',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/gasing-battle.webp',
        title: 'Gasing Battle',
        subtitle:
            'An Android game where the player controls a Gasing, a traditional toy from Indonesia, to battle with '
            'another player by tilting the mobile phone',
        url: 'gasing-battle',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/eyve.webp',
        title: 'Eyve',
        subtitle:
            'Eyve is built to protect people with visual impairments in their daily life with computer vision and '
            'voice recognition',
        url: 'eyve',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/aident.webp',
        title: 'Aident',
        subtitle: 'Aident detects crime behaviours and recognises criminal suspects in videos by using AWS technology',
        url: 'aident',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/novus.webp',
        title: 'Novus',
        subtitle: 'A new social network where people can see other people’s Augmented Reality contents attached to '
            'the objects around their location',
        url: 'novus',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/patrons.webp',
        title: 'Patrons',
        subtitle: 'Reinventing the way to visualize and display financial data by leveraging the Virtual Reality '
            'technology',
        url: 'patrons',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/qololo.webp',
        title: 'Qololo',
        subtitle: 'A marketplace website for art designer',
        url: 'qololo',
      ),
      const ProjectItem(
        img: 'images/project_thumbnails/clovero.webp',
        title: 'Clovero',
        subtitle: 'An Indonesian culture themed word guessing game run on top of Line chatbot platform',
        url: 'clovero',
      )
    ];

    double width = MediaQuery.of(context).size.width;

    var row = isMobile(width)
        ? 1
        : isTablet(width)
            ? 2
            : 3;
    var col = projectItems.length ~/ row;

    var items = List.generate(
        col, (colIdx) => Row(children: List.generate(row, (rowIdx) => projectItems[colIdx * row + rowIdx])));

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
