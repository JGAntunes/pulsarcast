# `Scaling PubSub over the Distributed Web`

- João Antunes M.Sc Thesis
- Universidade de Lisboa, Instituto Superior Técnico
- 2017-2018/2019
- Advisors: 
  - [Luís Veiga](http://www.gsd.inesc-id.pt/~lveiga/)
  - [David Dias](http://daviddias.me/)

## Project Description

**Abstract**

One of the most prominent ways to distribute information nowadays is through the use of notifications or other methods which involve a producer of content (publisher) that shares content with other interested parts (subscribers). This publisher subscriber pattern is quite powerful and quite useful nowadays as it make it possible to build highly scalable systems at a low bandwidth cost. The goal for this work will be to have a working implementation of a pub/sub communication system into IPFS, a peer-to-peer hypermedia protocol, allowing for a fully distributed peer-to-peer pub/sub system. It is important though for this system to have a basic set of properties such as to offer reliability and/or speed, making it suitable to run different real life scenarios.

**Current implementations**

Currently IPFS has a simple working implementation of a pub/sub system under an experimental flag. This implementation relies on a simple network flood and as such is quite inefficient and costly.
Some other implementations/architectures in the decentralized systems field that could act as reference for this work are TERA (Baldoni et al, 2007) a topic based pub sub system over an unstructured network, Meghdoot (Gupta et al, 2004) a content based pub sub system over DHT’s, Sub-2-Sub (Voulgaris et al, IPTPS 2006) a content based pub sub system over an unstructured network. All of these references were extracted from XL peer-to-peer pub/sub systems (Kermarrec and Triantafillou, 2013).

**Challenges and problems to solve**

The solution I would like to propose would be inline with what is the IPFS philosophy to have a decoupled structure of small components that allow developers and users to use what’s best fit for their specific needs. As so, I think it would stand for an interesting challenge to have a pub/sub module (through the already used “libp2p interface” and making use of what it already has to offer) that one could easily configure according to it’s own needs, with parameters such as reliability (do I need to make sure every peer gets my messages or not?) and authentication (do I need my messages to be authenticated?).
The problems here arise when we aim at dealing with specific parts of the system, such as the subscription model and the event delivery. Should we use topic based subscriptions only? Should we allow for content based subscriptions also? If so how can one leverage this with IPFS?  What about event delivery (routing)? Should peers handle routing in a structured manner or not? What can we do to make the event dissemination not put too much pressure on the network?
By the end of this my goal would be to have an highly adaptive module that would allow developers and users to get a pub/sub system that is easy to reason with, configurable and allows them to make the most out of the network topology they’re working with.

## Documents

- [Thesis Project Document](./thesis-project-doc)
- [Meeting Notes](./meeting-notes)
- [Timeline](./TIMELINE.md)
- [Covered Literature](./covered-literature.md)

## Publications & Talks

> [SOON™](http://i0.kym-cdn.com/photos/images/original/000/117/014/GsE3k.jpg)
