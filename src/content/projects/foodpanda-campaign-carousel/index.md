---
title: "Foodpanda Campaign Carousel"
summary: "A high performance location-based campaign built with Geohash index"
date: "March 20 2020"
draft: false
tags:
- Go 
- GraphQL
- Amazon Web Service
- AWS DynamoDB
- AWS ElastiCache Redis
- AWS EKS
- AWS SNS
- AWS SQS
videoUrl: https://www.youtube.com/embed/lH1kYKF1V0E
thumbnail: /src/content/projects/foodpanda-campaign-carousel/campaign.webp
---

In Delivery Hero, I am working on campaign related features in [Foodpanda](https://www.foodpanda.com) 
and [Foodora](https://www.foodora.com). One of them is Campaign Carousel. This project consisted of
multiple components and I am working on the backend of this project.

For the backend, my team needs to handle the campaigns management (create, update, etc) and serve
the campaigns to the customers through web frontend and mobile apps.

The most difficult challenge for me was to return the list of campaigns based on 
the user location and the delivery 
areas of the restaurants participating in the campaigns. 
We have around 10 active campaigns per country,
around 9 thousand restaurants per campaign, and 10 delivery areas per restaurant. 
In other words, we need to do around 900 thousand location checks 
for all delivery areas for each user request.

My team managed to build the service and it was able to handle more than 400 thousand requests per minute, 
around 17 times more than the 
real peak throughput at that time, 
which is 23.7 thousand requests per minute. And now, after some more optimisations, it can handle more than 800 
thousand requests per minute with the response time around 3 ms.

In March 2020, I gave a talk about this project in 
[FOSSASIA Summit](https://2020.fossasia.org).