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
          getStyledText(
              context,
              'In this hackathon, my team won two awards '
              '(the Most Innovative and Best Presentation) out of five with '),
          getStyledInternalLink(context, 'Pandoraverse', '/projects/pandoraverse'),
          getStyledText(
              context,
              ' as our product. Pandoraverse is a new universe '
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
          getStyledExternalLink(
              context, 'F8 Facebook Developer Conference', 'https://about.fb.com/news/2019/04/f8-2019-day-1'),
          getStyledText(
              context,
              '. My team built a computer vision powered '
              'application to report bullying activities in schools.'),
        ],
      ),
      Section(
        title: 'AWS Hackdays 2019',
        imagePath: 'images/achievements/aws-hackdays-2019.jpg',
        contents: [
          getStyledText(
              context,
              'My team won the 1st place in AWS Hackdays 2019 '
              'Indonesia and secured the 3rd place in AWS Hackdays Grand '
              'Final in Singapore. We built two products for this competition. '),
          getStyledInternalLink(context, 'Aident', '/projects/aident'),
          getStyledText(context,
              ', a real-time crime activity detection and criminals face recognition system. The second one is '),
          getStyledInternalLink(context, 'Eyve', '/projects/eyve'),
          getStyledText(context, ' which is built to protect people with visual impairments in daily life.'),
        ],
      ),
      Section(
        title: 'National Data Science Challenge Singapore 2019',
        contents: [
          getStyledExternalLink(context, 'NDSC', 'https://www.kaggle.com/c/ndsc-advanced'),
          getStyledText(
              context,
              ' is a data science competition in Singapore organized by Shopee. '
              'This was my first time participating in a data science competition. '
              'My team managed to get to the top 50 out of 111 teams for Advanced Category.'),
        ],
      ),
      Section(
        title: 'F10 Fintech Hackathon Singapore 2018',
        contents: [
          getStyledText(context,
              'F10 Fintech Hackathon is an international hackathon hosted by F10 in Singapore. In this event, my team built '),
          getStyledInternalLink(context, 'Patrons', '/projects/patrons'),
          getStyledText(
              context,
              ', a new way to visualize and display financial data '
              'by providing personalized virtual experience monitoring with Virtual Reality technology. '
              'We were selected as the top 10 in this hackathon.'),
        ],
      ),
      Section(
        title: 'Facebook F8 Hackathon 2018',
        contents: [
          getStyledText(context, 'In 2018, I was shortlisted and got a free trip sponsored by Facebook to attend '),
          getStyledExternalLink(context, 'F8 Hackathon', 'https://hackf8.devpost.com'),
          getStyledText(context, ' in San Jose, California. This hackathon is a part of '),
          getStyledExternalLink(
              context, 'F8 Facebook Developer Conference', 'https://about.fb.com/news/2018/05/f8-2018-day-1'),
          getStyledText(context, ' event. In this event, my team built '),
          getStyledInternalLink(context, 'Novus', '/projects/novus'),
          getStyledText(context, ', an Augmented Reality based social network.'),
        ],
      ),
      Section(
        title: 'Line Creativate Chatbot Competition 2017',
        contents: [
          getStyledText(context, 'In this competition, my team developed a game chatbot '),
          getStyledInternalLink(context, 'Clovero', '/projects/clovero'),
          getStyledText(
              context,
              ', an Indonesian culture themed word '
              'guessing game. It was then selected as the top 50.'),
        ],
      ),
      Section(
        title: 'Kode Indonesia 2017',
        contents: [
          getStyledText(context, 'Kode Indonesia is a national programming competition held by '),
          getStyledExternalLink(context, 'Kalibrr', 'https://kalibrr.com'),
          getStyledText(context, '. I managed to be one of the top 50 finalists in this competition.'),
        ],
      ),
      Section(
        title: 'United By HCL Hackathon 2017',
        imagePath: 'images/achievements/united-by-hcl.jpg',
        contents: [
          getStyledText(
              context,
              'In 2017, my team competed with around 2000 teams '
              'and was selected as one of the top 4 teams (for Blockchain category) '
              'to present our project in the final event of UnitedByHCL Hackathon, '
              'a global hackathon held by Manchester United and HCL Technologies in Manchester. '
              'My team’s project is '),
          getStyledInternalLink(context, 'Comet', '/projects/comet'),
          getStyledText(context, ', an offline payment solution that leverages the power of blockchain.'),
        ],
      ),
      Section(
        title: 'Jenius BTPN Hackathon 2017',
        contents: [
          getStyledText(context, 'In this hackathon, my team built the third version of '),
          getStyledInternalLink(context, 'Ceki', '/projects/ceki'),
          getStyledText(context, '. Here, we were selected as one of the top 10 teams.'),
        ],
      ),
      Section(
        title: 'BNI Hackfest Malang 2017',
        imagePath: 'images/achievements/bni-hackfest-malang.jpg',
        contents: [
          getStyledText(context, 'In this competition, my team built the second version of '),
          getStyledInternalLink(context, 'Ceki', '/projects/ceki'),
          getStyledText(context, ' and we got the 2nd winner award.'),
        ],
      ),
      Section(
        title: 'AirAsia Airvolution Hackathon 2017',
        contents: [
          getStyledText(context, 'AirAsia Airvolution Hackathon 2017 is the first hackathon organised by '),
          getStyledExternalLink(context, 'AirAsia', 'https://airasia.com'),
          getStyledText(
              context,
              '. My team was selected to represent Indonesia '
              'to compete with the other 20 teams from other countries.'),
        ],
      ),
      Section(
        title: 'Bank Rakyat Indonesia Hackathon 2016',
        contents: [
          getStyledText(
              context,
              'In this hackathon, my team was selected as one of the top 10 teams. '
              'The project we built here was '),
          getStyledInternalLink(context, 'Ceki', '/projects/ceki'),
          getStyledText(context, ', a QR code based payment system.'),
        ],
      ),
      Section(
        title: 'Kaskus HP Startgaming Competition 2015',
        imagePath: 'images/achievements/startgaming.jpg',
        contents: [
          getStyledText(context, 'Kaskus HP Startgaming Competition is a gaming competition held by '),
          getStyledExternalLink(context, 'Kaskus', 'https://kaskus.co.id'),
          getStyledText(context, '. My team won 2nd place in this competition.'),
        ],
      ),
      Section(
        title: 'IBM Developer War Day 2015',
        contents: [
          getStyledText(
              context,
              'IBM Developer War Day is a software development competition held by IBM Indonesia. My team built '
              'a city reporting system and was selected as a finalist.'),
        ],
      ),
      Section(
        title: 'Indigo Apprentice Awards 2015',
        contents: [
          getStyledText(context, 'My team was selected as a finalist in this event with our project '),
          getStyledInternalLink(context, 'Qololo', '/projects/qololo'),
          getStyledText(context, '.'),
        ],
      ),
      Section(
        title: 'Indigo Incubator 2015',
        contents: [
          getStyledText(context, 'My team was selected as a finalist in this event with our project '),
          getStyledInternalLink(context, 'Qololo', '/projects/qololo'),
          getStyledText(context, '.'),
        ],
      ),
      Section(
        title: 'Bandung Open Data Challenge 2015',
        contents: [
          getStyledText(
              context,
              'This competition was held by the Government of Bandung city and Bank Indonesia. Here, my team was '
              'selected as one of the top 3 finalists for Economic Category.'),
        ],
      ),
      Section(
        title: 'Gemastik (Pagelaran Mahasiswa Nasional bidang Teknologi Informasi dan Komunikasi) VII 2014',
        contents: [
          getStyledText(
              context,
              'Gemastik is the biggest student information technology competition in Indonesia. '
              'Here, my team won 2nd place for the Business Game Category.'),
        ],
      ),
      Section(
        title: 'COMPFEST University of Indonesia 2014',
        contents: [
          getStyledExternalLink(context, 'COMPFEST', 'https://www.compfest.id'),
          getStyledText(
              context,
              ' is an annual information technology competition held by the University of Indonesia. '
              'Here, my team’s project '),
          getStyledInternalLink(context, 'Gasing Evo', '/projects/gasing-evo'),
          getStyledText(context, ' was awarded “Excellence in Game Arts” for the game category.'),
        ],
      ),
      Section(
        title: 'INAICTA (Indonesia ICT Awards) 2014',
        contents: [
          getStyledText(
              context,
              'INAICTA is the biggest information and communication technology event in Indonesia. '
              'In this competition, my team’s project, '),
          getStyledInternalLink(context, 'Gasing Evo', '/projects/gasing-evo'),
          getStyledText(
              context,
              ' was nominated for “Best Student Game Development” award. Gasing Evo is an action '
              'arcade game for mobile and PC made to mimic Indonesian traditional game “Gasing”,'),
        ],
      ),
      Section(
        title: 'Institut Teknologi Bandung Chess Competition 2013',
        contents: [
          getStyledText(context, 'My team won 1st place in this chess competition.'),
        ],
      ),
      Section(
        title: 'Gemastik (Pagelaran Mahasiswa Nasional bidang Teknologi Informasi dan Komunikasi) VI 2013',
        contents: [
          getStyledText(
              context,
              'Gemastik is the biggest student information technology competition in Indonesia. '
              'In this competition, my team won the 3rd place for Intelligent System Category.'),
        ],
      ),
      Section(
        title: 'Kejurnas (Kejuaraan Catur Nasional Mahasiswa) 2011 and 2012',
        contents: [
          getStyledText(
              context,
              'Kejurnas is Indonesia’s national college student chess competition. I was one of '
              'the students representing my university in this competition in 2011 and 2012.'),
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
