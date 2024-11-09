---
company: "Booking.com"
role: "Senior Software Engineer"
dateStart: "12/15/2022"
dateEnd: "07/17/2024"
---

[Booking.com](https://booking.com) is one of the largest digital travel companies in the world. Booking.com, along with other big travel brands such as Priceline, Agoda, Kayak, Rentalcars.com & OpenTable, are part of [Booking Holdings](https://www.bookingholdings.com).

One of our biggest goals at Booking.com is to build the connected trip. We want to enable customers to book a combination of products (hotels, flights, attractions, taxis, insurance, and rental cars) in a single trip.

My team, Order Platform, contributes to this goal by integrating orders across multiple products. There are thousands of orders a day. And what makes it more challenging is we have to handle complex scenarios because it involves multiple products. For example, when a customer tries to cancel their trip, we can't just send cancellation requests to every product and assume everything will succeed. What if the flight is successfully cancelled, but the hotels fail? Then we need to do a rollback. But how do we roll back a cancellation?

To solve these challenges, we need to design the system carefully. We also use Orchestration-based Saga using AWS Step Functions. Other technologies involved are Java, Cassandra, and Kubernetes.