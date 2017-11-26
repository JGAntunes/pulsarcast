



The publish/subscribe message pattern is an approach that has received an increasing amount of attention recently. This is mainly due to its special properties, that allow for full decoupling of all the communicating parts in time, space and synchronization. We'll cover these important properties, but first let's define what the publish/subscribe pattern is. In this interaction scheme, subscribers (or consumers) sign up for events, or classes of events, from publishers (or producers) that are subsequently asynchronously delivered. Taking a closer look at this definition you'll see that this comes hand in hand with the way information is consumed nowadays, with the exponential growth of social networks like Twitter and the usage of feeds such as RSS.

A lot of these systems rely on the publish/subscribe paradigm and a lot of work as been done by companies like Twitter and LinkedIn into making these systems highly scalable, with the creation of tools like Kafka, which aim at guaranteeing low latency and high event throughput. Other examples are the multiple message queue systems like Apache Active MQ, RabbitMQ, Redis, etc. These solutions are, of course, centralised and as such suffer from all the common issues that affect centralised solutions, it's quite hard to maintain and scale these systems to a lot of clients. Peer-to-Peer networks


# See Bayeux, Spidercast and Poldercast


Systems overview

| Design Dimensions \ Systems | Gryphon | Siena | Jedi | Scribe | Meghdoot | Hermes | Rebecca | PastryStrings |     Tera    | SpiderCast | Mercury | Sub-2-Sub | PastryStrings |
|-----------------------------|---------|-------|------|--------|----------|--------|---------|---------------|:-----------:|------------|---------|-----------|---------------|
| Expressiveness              |         |       |      |        |          |        |         |               | Topic based |            |         |           |               |
| State                       |         |       |      |        |          |        |         |               |             |            |         |           |               |
| Network dependence          |         |       |      |        |          |        |         |               |             |            |         |           |               |
| Locality awareness          |         |       |      |        |          |        |         |               |             |            |         |           |               |
| Guarantees                  |         |       |      |        |          |        |         |               | Best effort |            |         |           |               |
