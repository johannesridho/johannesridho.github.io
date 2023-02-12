import 'package:flutter/material.dart';

import '../body.dart';
import '../common_container.dart';

class FPCampaign extends StatelessWidget {
  const FPCampaign({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePadding = EdgeInsets.symmetric(vertical: 10);

    return Body(
      title: "Foodpanda Campaign Carousel",
      child: CommonContainer(
        children: [
          Padding(
            padding: imagePadding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.asset('images/projects/campaign.png'),
            ),
          ),
          Text(
            'At Delivery Hero, I am working on campaign related features in Foodpanda and Foodora. One of them is Campaign Carousel. This project consisted of multiple components and I am working on the backend of this project. '
            'For the backend, my team needs to handle the campaigns management (create, update, etc) and serve the campaigns to the customers through web frontend and mobile apps. '
            'The most difficult challenge for me was to return the list of campaigns based on the user location and the delivery areas of the restaurants participating in the campaigns. We have around 10 active campaigns per country, around 9 thousand restaurants per campaign, and 10 delivery areas per restaurant. In other words, we need to do around 900 thousand location checks for all delivery areas for each user request. '
            'My team managed to build the service and it was able to handle more than 400 thousand requests per minute, around 17 times more than the real peak throughput at that time, which is 23.7 thousand requests per minute. And now, after some more optimisations, it can handle more than 800 thousand requests per minute with the response time around 3 ms. '
            'In March 2020, I gave a talk about this project in FOSSASIA Summit. ',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
