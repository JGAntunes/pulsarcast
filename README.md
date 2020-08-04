# `Pulsarcast`
## `Scalable and reliable pub-sub over P2P networks`

- João Antunes M.Sc Thesis
- Institutions:
  - [Universidade de Lisboa, Instituto Superior Técnico](https://tecnico.ulisboa.pt)
  - [INESC-ID Lisboa (Distributed Systems Group)](https://www.gsd.inesc-id.pt)
- Advisors: 
  - [Luís Veiga](http://www.gsd.inesc-id.pt/~lveiga/)
  - [David Dias](http://daviddias.me/)
- 2017-2020

## Implementation

[JS-Pulsarcast](https://github.com/JGAntunes/js-pulsarcast) - A javascript implementation of pulsarcast, using [libp2p](https://github.com/libp2p/js-libp2p)

## Project Description

**Abstract**

The publish-subscribe paradigm is a wildly popular form of communication in
complex distributed systems. The properties offered by it make it an ideal
solution for a multitude of applications, ranging from social media to content
streaming and stock exchange platforms. Consequently, a lot of research exists
around it, with solutions ranging from centralised message brokers, to fully
decentralised scenarios (peer to peer).

Within the pub-sub realm not every solution is the same of course and
trade-offs are commonly made between the ability to distribute content as fast
as possible or having the assurance that all the members of the network will
receive the content they have subscribed to. Delivery guarantees is something
quite common within the area of centralised pub-sub solutions, there is,
however, a clear lack of decentralised systems accounting for this.
Specifically, a reliable system with the ability to provide message delivery
guarantees and, more importantly, persistence guarantees. To this end, we
present Pulsarcast, a decentralised, highly scalable, pub-sub, topic based
system seeking to give guarantees that are traditionally associated with a
centralised architecture such as persistence and eventual delivery guarantees.

The aim of Pulsarcast is to take advantage of the network infrastructure and
protocols already in place. Relying on a structured overlay and a graph based
data structure, we build a set of dissemination trees through which our events
will be distributed. Our work also encompasses a software module that
implements Pulsarcast, with our experimental results showing that is a viable
and quite promising solution within the pub-sub and peer to peer ecosystem.

## Documents

- Final thesis work
  - [Final Thesis Document](./thesis/dissertation.pdf) - final thesis report with related work, description of our solution and evaluation
  - [ACM 13 Page, 2 column, Paper Format](./paper/paper.pdf)
  - [ACM 10 Page, 2 column, Summary (required by Técnico for administrative reasons)](./paper/paper.pdf)
  - [Final Thesis Presentation (slideshare)](https://www.slideshare.net/JooAntunes37/pulsarcast-scalable-and-reliable-pubsub-over-p2p-networks)
  - [Final Thesis Presentation (pdf)](./thesis/presentation.pdf)
  - [Covered Literature](./bibliography/dissertation.bib)

- Initial research work and project proposal:
  - [Thesis Project Document](./project-report/report.pdf) - initial report covering related work and proposed solution
  - [Thesis Project Presentation](https://www.slideshare.net/JooAntunes37/pulsarcast-scaling-pubsub-over-the-distributed-web)

## Publications & Talks

- [Pulsarcast: Scalable and reliable pub-sub over P2P networks](https://www.youtube.com/watch?v=D2UKQPKMjr4) - Protocol Labs research talk
- [Testing P2P Applications with Kubernetes and Toxiproxy](https://www.youtube.com/watch?v=pP0fS-FCsjE) - IPFS community talk

## Acknowledgements

This work was developed at [INESC-ID Lisboa (Distributed Systems Group)](https://www.gsd.inesc-id.pt), [Instituto Superior Técnico, Universidade de Lisboa](https://www.gsd.inesc-id.pt).

A very special thank you to Microsoft Azure (and specially [@palma21](https://github.com/palma21)) for supporting our evaluation efforts.
