import 'package:flutter/material.dart';

import 'body.dart';
import 'common_container.dart';
import 'common_widgets/section.dart';
import 'helper.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = <Widget>[
      Section(
        title: 'Senior Software Engineer - Delivery Hero (2019 - 2021)',
        imagePath: 'images/experiences/fp.jpg',
        contents: [
          getStyledExternalLink(context, 'Delivery Hero', 'https://deliveryhero.com'),
          getStyledText(context, ' is one of the leading global online food ordering and delivery marketplaces. '
              'It processes more than 3 million orders per day, partnering with over 500 thousand restaurants and '
              'a fleet of riders. Delivery Hero operates in over 40 countries across five continents with over '
              '22 thousand employees globally.'),
          getStyledText(context, '\n\nHere I am working on the backend for campaign-related features in '),
          getStyledExternalLink(context, 'Foodpanda', 'https://foodpanda.com'),
          getStyledText(context, ' and '),
          getStyledExternalLink(context, 'Foodora', 'https://foodora.com'),
          getStyledText(context, ' by using Go, Redis, DynamoDB, Kubernetes, with Amazon Web Service as '
              'the main infrastructure. The backend of our main project, '),
          getStyledInternalLink(context, 'Campaign Carousel', '/projects/foodpanda-campaign'),
          getStyledText(context, ', can handle more than 900 thousand requests per minute.'),
        ],
      ),
      Section(
        title: 'Tech Lead - Call Levels (2018 - 2019)', 
        imagePath: 'images/experiences/call-levels.jpg', 
        contents: [
          getStyledExternalLink(context, 'Call Levels', 'https://www.call-levels.com'),
          getStyledText(context, ' is a market monitoring mobile application with more than '
              '500 thousand investors globally. At Call Levels, I was working on the new backend for the price monitoring and '
              'notification system by using Go and Google Cloud Platform technologies (such as Google Kubernetes Engine). '
              'My team’s main goal was to create a new backend with better performance compared with the previous backend app. '
              'The new backend was able to handle ~1 million concurrent price hits and send the notification '
              'to the users in a few seconds.'
              '\n\nBefore that, I was also working on the backend for Call Levels chat solution '
              'with Node.js and Google Dialogflow.')
        ],
      ),
    ];

    return Body(
      title: "Experiences",
      child: CommonContainer(
        children: experiences,
      ),
    );
  }
}
