



The publish/subscribe message pattern is an approach that has received an increasing amount of attention recently. This is mainly due to its special properties, that allow for full decoupling of all the communicating parts. First let's define what the publish/subscribe pattern is. In this interaction scheme, subscribers (or consumers) sign up for events, or classes of events, from publishers (or producers) that are subsequently asynchronously delivered. Taking a closer look at this definition you'll see that this comes hand in hand with the way information is consumed nowadays, with the exponential growth of social networks like Twitter and the usage of feeds such as RSS.

The previously discussed decoupling can be broken in three different parts. The decoupling in time, space and synchronisation.  The time decoupling comes from the fact that publishers and subscribers do not need to be interacting with each other at the same time, this means that the publisher can publish some events while the subscriber is disconnected and the subscriber can be notified of an event whose publisher is disconnected. Space decoupling gives the both parties the benefit of not needing to know each other in order to communicate, given that consumers and producers are focused on they're specific roles (consuming/producing) and don't care for who's doing what, or how many producers are for example. Synchronization decoupling is a consequence of the asynchronous nature of the pub/sub pattern, as publishers don't need to be blocked while producing events and subscribers can be asynchronously notified. The decoupling that this kind of system offers makes it the ideal candidate for very large networks that need a way to communicate in a efficient way. 

Due to properties described above, a lot of applications rely on the publish/subscribe paradigm and a lot of work as been done by companies like Twitter and LinkedIn into making these systems highly scalable, with the creation of tools like Kafka, which aim at guaranteeing low latency and high event throughput. Other examples are the multiple message queue systems like Apache Active MQ, RabbitMQ, Redis, etc. These solutions are, of course, centralised and as such suffer from all the common issues that affect centralised solutions, it's quite hard to maintain and scale these systems to a lot of clients. Peer-to-Peer networks on the other hand, have proven numerous times, that this is where they shine, with examples such as Gnutella, Skype and most recently IPFS (worth mentioning DAT?). All of these systems are a living proof of high scalability P2P can offer (worth presenting more arguments in favour of P2P? Privacy?)

In the P2P field a lot of solutions have been purposed and explored over the past years. But aiming at a decentralised approach in pub/sub comes with its own challenges, since with this you have to account for 


# See Bayeux, Spidercast and Poldercast


Systems overview

| Design Dimensions \ Systems | Gryphon | Siena | Jedi | Scribe | Meghdoot | Hermes | Rebecca | PastryStrings |     Tera    | SpiderCast | Mercury | Sub-2-Sub | Poldercast |
|-----------------------------|---------|-------|------|--------|----------|--------|---------|---------------|:-----------:|------------|---------|-----------|------------|
| Expressiveness              |         |       |      |        |          |        |         |               | Topic based |            |         |           |            |
| State                       |         |       |      |        |          |        |         |               |             |            |         |           |            |
| Network dependence          |         |       |      |        |          |        |         |               |             |            |         |           |            |
| Locality awareness          |         |       |      |        |          |        |         |               |             |            |         |           |            |
| Guarantees                  |         |       |      |        |          |        |         |               | Best effort |            |         |           |            |
