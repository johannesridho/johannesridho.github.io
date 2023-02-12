import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'body.dart';
import 'helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    getResponsiveHomePadding(double width) {
      if (isMobile(width)) {
        return 20.0;
      }
      return width * 0.2;
    }

    return Body(
      title: "",
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: height/4, horizontal: getResponsiveHomePadding(width)),
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 81,
              backgroundColor: Theme.of(context).primaryIconTheme.color,
              child: CircleAvatar(
                radius: 80,
                foregroundImage: Image.asset('images/photo.webp').image,
              ),
            ),
          ),
          const Divider(height: 15, color: Colors.transparent),
          SelectableText(
            'Johannes Ridho Tumpuan Parlindungan',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const Divider(height: 10, color: Colors.transparent),
          SelectableText(
            'A software engineer experienced in backend (Go, Java, Python, Node.js, '
                'Spring Framework), infrastructure (Google Cloud Platform and '
                'Amazon Web Services), data engineering (Google Dataflow, '
                'Google BigQuery, Apache Airflow), virtual and augmented reality, '
                'blockchain, and game development',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const Divider(height: 15, color: Colors.transparent),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'icons/email.svg',
                  color: Theme.of(context).primaryIconTheme.color,
                  height: 30,
                  width: 30,
                ),
                iconSize: 30,
                onPressed: () {
                  launchUrl(Uri.parse('mailto:johan.ridho@gmail.com'));
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'icons/linkedin.svg',
                  color: Theme.of(context).primaryIconTheme.color,
                  height: 30,
                  width: 30,
                ),
                iconSize: 30,
                onPressed: () {
                  launchUrl(Uri.parse('https://linkedin.com/in/johanridho'));
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'icons/github.svg',
                  color: Theme.of(context).primaryIconTheme.color,
                  height: 30,
                  width: 30,
                ),
                iconSize: 30,
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/johannesridho'));
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'icons/leetcode.svg',
                  color: Theme.of(context).primaryIconTheme.color,
                  height: 30,
                  width: 30,
                ),
                iconSize: 30,
                onPressed: () {
                  launchUrl(Uri.parse('https://leetcode.com/jortp'));
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'icons/lichess.svg',
                  color: Theme.of(context).primaryIconTheme.color,
                  height: 30,
                  width: 30,
                ),
                iconSize: 30,
                onPressed: () {
                  launchUrl(Uri.parse('https://lichess.org/@/jrtph'));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
