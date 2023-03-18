import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';
import '../helper.dart';

class Ceki extends StatelessWidget {
  const Ceki({super.key});

  @override
  Widget build(BuildContext context) {
    return Body(
      title: "Ceki",
      child: CommonContainer(
        disableSeparator: true,
        children: [
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [
              text(
                  context,
                  'Ceki is an application that simplify payment. The idea is to use QR codes for any products and '
                  'then the user can just scan it to pay. This application was selected as the 2nd place '
                  'winner in BNI Hackfest Malang, top 10 in '),
              link(context, 'Bank Rakyat Indonesia Hackathon 2016',
                  'https://id.techinasia.com/ide-startup-terbaik-di-hackathon-bri-digital-challenge'),
              text(
                  context,
                  ', and top 10 '
                  'at Jenius BTPN Hackathon 2017.')
            ]),
          ),
          SelectableText.rich(
            textAlign: TextAlign.justify,
            TextSpan(children: [text(context, 'Technologies: Web, Android, Node.js with Sails, React, Kotlin')]),
          ),
        ],
      ),
    );
  }
}
