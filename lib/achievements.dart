import 'package:flutter/material.dart';

import 'body.dart';
import 'common_container.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    const headerPadding = EdgeInsets.only(bottom: 10);
    const imagePadding = EdgeInsets.symmetric(vertical: 10);

    final experiences = <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: headerPadding,
            child: Text(
              'Delivery Hero Hackathon 2021',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Text(
            'In this hackathon, my team won the Most Innovative and Best Presentation award with Pandoraverse as our product. Pandoraverse is a new universe designed to explore restaurants through Augmented Reality.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: imagePadding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.asset('images/achievements/dh-hackathon-2021.jpg'),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: headerPadding,
            child: Text(
              'Facebook F8 Hackathon 2019',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Text(
            'In 2019, I was shortlisted again to attend F8 Hackathon and F8 Facebook Developer Conference. My team built a computer vision powered application to report bullying activities in schools.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: imagePadding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.asset('images/achievements/f8-2019.jpg'),
            ),
          ),
        ],
      )
    ];

    return Body(
      title: "Achievements",
      child: CommonContainer(
        children: experiences,
      ),
    );
  }
}
