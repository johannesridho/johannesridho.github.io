import 'package:flutter/material.dart';

import 'body.dart';
import 'common_container.dart';
import 'common_widgets/section.dart';
import 'helper.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = <Widget>[
      Section(
        title: 'Delivery Hero Hackathon 2021',
        imagePath: 'images/achievements/dh-hackathon-2021.jpg',
        contents: [
          getStyledText(context, 'In this hackathon, my team won two awards '
            '(the Most Innovative and Best Presentation) out of five with '),
          getStyledInternalLink(context, 'Pandoraverse', '/projects/pandoraverse'),
          getStyledText(context, ' as our product. Pandoraverse is a new universe '
            'designed to explore restaurants through Augmented Reality.'),
        ],
      ),
      Section(
        title: 'Facebook F8 Hackathon 2019',
        imagePath: 'images/achievements/f8-2019.jpg',
        contents: [
          getStyledText(context, 'In 2019, I was shortlisted again to attend '),
          getStyledExternalLink(context, 'F8 Hackathon', 'https://f82019.devpost.com'),
          getStyledText(context, ' and '),
          getStyledExternalLink(context, 'F8 Facebook Developer Conference', 'https://about.fb.com/news/2019/04/f8-2019-day-1'),
          getStyledText(context, '. My team built a computer vision powered '
            'application to report bullying activities in schools.'),
        ],
      ),
      Section(
        title: 'AWS Hackdays 2019',
        imagePath: 'images/achievements/aws-hackdays-2019.jpg',
        contents: [
          getStyledText(context, 'My team won the 1st place in AWS Hackdays 2019 '
            'Indonesia and secured the 3rd place in AWS Hackdays Grand '
            'Final in Singapore. We built two products for this competition. '),
          getStyledInternalLink(context, 'Aident', '/projects/aident'),
          getStyledText(context, ', a real-time crime activity detection and criminals face recognition system. The second one is '),
          getStyledInternalLink(context, 'Eyve', '/projects/eyve'),
          getStyledText(context, ' which is built to protect people with visual impairments in daily life.'),
        ],
      ),
      Section(
        title: 'National Data Science Challenge Singapore 2019',
        contents: [
          getStyledExternalLink(context, 'NDSC', 'https://www.kaggle.com/c/ndsc-advanced'),
          getStyledText(context, ' is a data science competition in Singapore organized by Shopee. '
            'This was my first time participating in a data science competition. '
            'My team managed to get to the top 50 out of 111 teams for Advanced Category.'),
        ],
      ),
      Section(
        title: 'F10 Fintech Hackathon Singapore 2018',
        contents: [
          getStyledExternalLink(context, 'F10 Fintech Hackathon', ''),
          getStyledText(context, ' is an international hackathon hosted by F10 in Singapore. In this event, my team built '),
          getStyledInternalLink(context, 'Patrons', '/projects/patrons'),
          getStyledText(context, ', a new way to visualize and display financial data '
            'by providing personalized virtual experience monitoring with Virtual Reality technology. '
            'We were selected as the top 10 in this hackathon.'),
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
