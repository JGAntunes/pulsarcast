# msc-notes
Notes for my master thesis @ IST

## Possible topics to cover

* [S3-backed IPFS](https://github.com/ipfs/notes/issues/214) - (might be too simple/ not that interesting for a project like this?)
* [Real world IPFS scenarios we want to test](https://github.com/ipfs/notes/issues/211) - (goal might be to build an application which enables us to test some of the desired metrics here and extract conclusions on how well IPFS performs under certain scenarios?)
* [Making IPFS accessible for distributed archival](https://github.com/ipfs/notes/issues/210)
* [DSL for specifying a libp2p node](https://github.com/ipfs/notes/issues/209)
* [IPFS and package managers](https://github.com/ipfs/notes/issues/171)
* [Discussions and Planning about getting PubSub on IPFS/libp2p](https://github.com/libp2p/research-pubsub)
* [Implement databases over IPFS using Persistent Balanced Trees](https://github.com/ipfs/notes/issues/161)
* [Thoughts on the next level of content routing for ipfs](https://github.com/ipfs/notes/issues/162)

More here [https://github.com/ipfs/notes](https://github.com/ipfs/notes)

## Chosen topics
* [Discussions and Planning about getting PubSub on IPFS/libp2p](https://github.com/libp2p/research-pubsub)

Scenario: Assembling a reliable and fast pub/sub network on top of IPFS

Allow for the propagation of information in a structured manner using a pub sub pattern. The challenges could possibly be, how to route information across peers without putting too much pressure on the network (either way pub->sub, sub->pub) while giving basic guarantees like basic reliability and fast enough to be used in a real world scenario.

* [IPFS and package managers](https://github.com/ipfs/notes/issues/171)

Scenario: Package managers over IPFS

What would be the main benefits of having package managers over IPFS? A truly distributed package manager, no need for complex infrastructures to deal with a centralized source which can easily become a bottleneck. There are already some implementations like [gx](https://github.com/whyrusleeping/gx) which might be a good starting point to look at but probably lacks in terms of having a well defined and established package manager to compare it to (unlike Node and NPM for example, or dpkg and debian). By the end, one of the main goals here would be to compare any possible implementation(s) over IPFS with a real live one in terms of resilience, performance, correctness, etc.

* [Making IPFS accessible for distributed archival](https://github.com/ipfs/notes/issues/210)

Scenario: Archiving large files using IPFS

The archival of big datasets on IPFS could be a way to offload some of the burden to the peers while adding other important features like replication (and even maybe have specific content closer to where it's useful, although this might be way out of hand to what the focus here is). A possible goal could be to develop a solution where one could make a big dataset available without putting too much pressure on the network and that could also guarantee some other nice to have features such as replication(?)


## Things I still need to grasp

https://github.com/ipld/specs/tree/master/ipld

https://github.com/ipfs/faq/issues/16
