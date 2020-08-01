---
title: Foodpanda Campaign Carousel
category: "hackathon"
cover: campaign.png
author: Jo
---

![campaign](campaign2.png)

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
which is 23.7 thousand requests per minute. And now, after some more optimisations, it is able to handle more than 700 
thousand requests per minute.

In March 2020, I gave a talk about this project in 
[FOSSASIA Summit](https://summit.fossasia.org).

<iframe width="1440" height="900" src="https://www.youtube.com/embed/lH1kYKF1V0E?t=4" frameborder="0" allow="accelerometer;
autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Technologies: Go, GraphQL, Amazon Web Service (DynamoDB, ElastiCache Redis, Elastic Kubernetes Service, 
SNS, SQS)
