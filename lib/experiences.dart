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
          getStyledText(context, ' by using Go, Redis, Amazon DynamoDB, MySQL, '
            'Kubernetes, with Amazon Web Service as the main infrastructure.'
            'The backend of our main project, '),
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
            '500 thousand investors globally. At Call Levels, I built the '
            'backend for the price monitoring and '
            'notification system using Go, Redis, and Google Cloud Platform '
              'technologies (such as Google Kubernetes Engine). '
            'My team’s main goal was to create a new backend with better performance compared with the previous backend app. '
            'The new backend was able to handle ~1 million concurrent price hits and send the notification '
            'to the users in a few seconds.'
            '\n\nBefore that, I was also working on the backend for Call Levels chat solution '
            'using Node.js and Google Dialogflow.')
        ],
      ),
      Section(
        title: 'Principal Software Engineer - GDP Labs (2015 - 2018)',
        imagePath: 'images/experiences/kaspay.png',
        contents: [
          getStyledExternalLink(context, 'GDP Labs (Global Digital Prima) Labs', 'https://gdplabs.id'),
          getStyledText(context, ', is a software product development-centric organization based in Indonesia. '
            'It’s main goal is to help sister companies and incubate startups'
              '. GDP Labs is a part of '),
          getStyledExternalLink(context, 'GDP Venture', 'https://gdpventure.com'),
          getStyledText(context, '.\n\nAt GDP Labs, I was mainly working on '
              'two big projects from '),
          getStyledExternalLink(context, 'Kaskus', 'https://kaskus.co.id'),
          getStyledText(context, ', the biggest online forum in Indonesia '
            'with more than 25 million users. The projects are '),
          getStyledExternalLink(context, 'Kaspay', 'https://kaspay.com'),
          getStyledText(context, ' and Kaskus Big Data.'),
          getStyledText(context, '\n\nKaspay consists of payment bot (available '
            'on FB Messenger, Telegram, Line, and Kaskus Chat), wallet, voucher, '
            'and invoice system developed using Java (with Spring Framework) '
            'for the backend, and React for the frontend.'),
          getStyledText(context, '\n\nAfter Kaspay, I worked on Kaskus Big '
            'Data. Kaskus Big Data team was responsible for '
            'providing Data Warehouse and Data Mart for data analysis and '
            'building Machine Learning models in Kaskus. We built the data '
            'pipeline in Kaskus using Google Cloud Platform (Dataflow, PubSub, BigQuery) '
            'and Apache Airflow.')
        ],
      )
    ];

    return Body(
      title: "Experiences",
      child: CommonContainer(
        children: experiences,
      ),
    );
  }
}
