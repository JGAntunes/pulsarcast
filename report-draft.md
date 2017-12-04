
# Introduction

The publish/subscribe message pattern is an approach that has received an increasing amount of attention recently. This is mainly due to its special properties, that allow for full decoupling of all the communicating parts. First let's define what the publish/subscribe pattern is. In this interaction scheme, subscribers (or consumers) sign up for events, or classes of events, from publishers (or producers) that are subsequently asynchronously delivered. Taking a closer look at this definition you'll see that this comes hand in hand with the way information is consumed nowadays, with the exponential growth of social networks like Twitter and the usage of feeds such as RSS.

The previously discussed decoupling can be broken in three different parts. The decoupling in time, space and synchronisation.  The time decoupling comes from the fact that publishers and subscribers do not need to be interacting with each other at the same time, this means that the publisher can publish some events while the subscriber is disconnected and the subscriber can be notified of an event whose publisher is disconnected. Space decoupling gives the both parties the benefit of not needing to know each other in order to communicate, given that consumers and producers are focused on they're specific roles (consuming/producing) and don't care for who's doing what, or how many producers are for example. Synchronization decoupling is a consequence of the asynchronous nature of the pub/sub pattern, as publishers don't need to be blocked while producing events and subscribers can be asynchronously notified. The decoupling that this kind of system offers makes it the ideal candidate for very large networks that need a way to communicate in a efficient way. 

Due to properties described above, a lot of applications rely on the publish/subscribe paradigm and a lot of work as been done by companies like Twitter and LinkedIn into making these systems highly scalable, with the creation of tools like Kafka, which aim at guaranteeing low latency and high event throughput. Other examples are the multiple message queue systems like Apache Active MQ, RabbitMQ, Redis, etc. These solutions are, of course, centralised and as such suffer from all the common issues that affect centralised solutions, it's quite hard to maintain and scale these systems to a lot of clients. Peer-to-Peer networks on the other hand, have proven numerous times, that this is where they shine, with examples such as Gnutella, Skype and most recently IPFS (worth mentioning DAT?). All of these systems are a living proof of high scalability P2P can offer (worth presenting more arguments in favour of P2P? Privacy?)

- Enumerate burdens of dealing with a distributed P2P system
- Enumerate some solutions and list they're shortcomings and how they diverge in not only expressiveness vs scaling, but also reliability vs speed
- Purposed solution and its goals

# Related work

Some general notes that outline what should be described here:

- First approaches follow a "centralised" broker based topology.
- Usage of network overlays as the substrate for pub/sub systems. (? explain different network types and give examples?)
  - On one end, structured networks, that provided reliability but were costly to maintain and couldn't cope with churn
  - On the other side, unstructured networks (such as gossip based networks), which provided high resilience to churn but lack the ability to provide reliability, with event delivery following a probabilistic best effort approach.
- The expressiveness of the different pub/sub systems (content based, topic based, type based, etc.) and how it influences choosing the properties above.
- Recent hybrid solutions that use multiple overlays (structured and unstructured) to bring "the best of both worlds" to the table.
- (?) Discuss some qualities of service? Such as persistence, order, reliability, transactions?

- Open questions:
  - Web related technologies should be covered here. What should be covered? NodeJS and JS since this is what we're going to use? Stuff like webrtc which we'll probably use under the hood should be here also?
  - How should IPFS be introduced? As a relevant system or as system we know for sure we will work on? Must we describe the whole system or just the relevant parts?
  - Should the current IPFS floodsub implementation be considered here? Maybe as a "target to beat"?
  - IPLD and IPNS should be introduced as part of IPFS?
  - References for relevant systems which don't have a published work?

### Gryphon
Gryphon relies on a broker based network to build a content based subscription system. In the Gryphon approach, subscriptions take the form of a schema consisting of attributes, such as A1,..., An, and are stored in the form of a tree. A subscription specifying a value V1 to the first attribute of the schema, A1, will follow from the tree root the edge labeled with V1. If no such edge exists, one will be created. For Ai = Vi, the subscription will follow at level i − 1 the edge with label Vi. If a subscription does not name an attribute at level i, then it will follow the edge with label ∗ (do not care).

(Example sketch of the subscription matching system)

### Jedi

Jedi too relies on a broker based network to build a content based pub/sub system. It developed a tree topology of broker nodes, where users were associated with leaf brokers and users’ subscriptions and events were first directed to their associated brokers. During subscription processing, subscriptions were directed up the leaf-to-root path, leaving at each intermediate node some state. During event processing, events also followed the leaf-to- root path. This guaranteed that any event and any subscription would rendezvous at (least at) the root. Any incoming event would therefore be matched against all subscriptions that have passed through each broker, this guaranteed that no subscription matching an event would go undetected. Also, while events were travelling towards the root, subscription matching could happen at each broker and events would be sent down the tree if needed be.

(Example sketch of the routing system)

### Siena

Siena is similar to Jedi, but it forms a graph broker topology. (* still more to add)

### Meghdoot

### Tera

### Sub-2-Sub

### Poldercast

Note: See Bayeux and Spidercast

# Systems overview

| Systems / Properties | Expressiveness | Central nodes | Network overlay | Average degree (?) | Structure | Locality awareness | Support for fault tolerance | Relay-free routing | Delivery guarantees in the absence of churn | Message duplication factor |
|----------------------|:--------------:|:-------------:|:---------------:|:------------------:|:---------:|:------------------:|:---------------------------:|:------------------:|:-------------------------------------------:|:--------------------------:|
| Gryphon              |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Siena                |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Jedi                 |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Scribe               |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Meghdoot             |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Hermes               |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Rebecca              |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| PastryStrings        |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Tera                 |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| SpiderCast           |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Mercury              |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Sub-2-Sub            |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Bayeux               |                |               |                 |                    |           |                    |                             |                    |                                             |                            |
| Poldercast           |                |               |                 |                    |           |                    |                             |                    |                                             |                            |

Design dimensions:
- Expressiveness: subscription type (content based, topic based, type based, etc.)
- Central Nodes: relies in central nodes (no, brokers, rendezvous)
- Network overlay: type(s) of overlay(s) used
- Structure: the structure the network uses, if any (e.g. tree, multidimensional euclidean space, graph, ring)

Properties:
- Average degree (still wondering if it is a relevant dimension to look at): the average degree of the network
- Locality awareness: can leverage locality properties of the overlay
- Fault tolerance: speaks for itself
- Delivery guarantees (in the absence of churn?): speaks for itself

Efficiency related properties: 
- Relay-free routing: only subscribers interested in a topic are involved in routing events
- Message duplication factor: speaks for itself
- Message usefulness factor: Ratio of non operational messages (relevant for the end user) per total messages sent

# Purposed solution

## IPFS

### IPFS diagram

![ipfs diagram](./diagrams/ipfs-stack-diagram.png)

### P2P diagram

![libp2p diagram](./diagrams/libp2p-stack-diagram.png)

As per what we discussed, the desired capabilities of our system will be a highly reliable system with high robustness under churn, that uses IPLD and possibly IPNS to provide a way for events to not only be persisted but also gives the peers a way to validate their data stream and request missing blocks of information. This can power applications like document collaboration tools, or chat applications with multiple levels of threads happening at once.

(?) Need to better define the schema for the IPLD graph, since I think the way I might be seeing things might not be right.
