# Weekly Sync Up - December 7th, 2017

## Attendees:

- Luís Veiga
- João Antunes

## Agenda

- What was done
  - Define design dimensions and properties to look after on the relevant systems
  - Read:
    - Scribe paper
    - Pastry paper
  - Added to the read pile:
    - Cyclon: Inexpensive membership management for unstructured P2P overlays - Voulgaris, Spyros; Gavidia, Daniela; Van Steen, Maarten
    - VICINITY: A Pinch of Randomness Brings out the Structure - Voulgaris, Spyros; Van Steen, Maarten
    - Highly-Available Content-Based Publish/Subscribe via Gossiping - Salehi, Pooya; Doblander, Christoph
    - Efficient Epidemic-style Protocols for Reliable and Scalable Multicast Indranil - Gupta, Indranil; Kermarrec, Anne Marie; Ganesh, Ayalvadi J.
  - Better scoping our work inside IPFS, what are the pieces already in place and what will we work with.
- Questions
  - Review design dimensions/properties (https://github.com/JGAntunes/msc-thesis/blob/report-draft-v2/report-draft.md#systems-overview)
  - Review IPFS diagram and scope of work (https://github.com/JGAntunes/msc-thesis/blob/report-draft-v2/report-draft.md#ipfs)
  - Discuss IPLD usage, what data model will our msgs follow to be compatible with the IPLD path resolution.
- Blockser
  - Review some of the questions on the initial report draft
- Next steps

## Notes

After further discussing the design dimensions and properties with Luís we were left with:

Design dimensions are the design decisions that define how our system works.

* Design dimensions:
  * Subscription model (topic based, content based, etc.) - this directly affects the expressiveness of the system
  * Architecture (centralised, hierarchical, distributed, etc.)
  * Topology (in a distributed scenario, e.g. broker mesh, p2p, ...)
  * Overlay structure (the structure of the overlay(s) used - if any - where unstructered is a specific scenario)
  * Subscription management (representation, propagation?)
  * Event dissemination (routing, propagation)
  
Event dissemination and subscription management in the end might use the same mechanisms.
(?) still need to better define/separate architecture vs topology

Relevant properties are goals/special focuses that systems define as something they want to reach or give. These can be obtained by making the appropriate design decisions (see above).


* Relevant Properties:
  * Topology related:
    * Locality awareness
    * Relay free routing
  * Application related:
    * Delivery guarantees under normal conditions (when the system and network works as expected)
    * Fault tolerance mechanisms (delivery guarantees under churn, ability to keep network overlay structure when relevant nodes (or a great deal of nodes) leave the network)

Relevant metrics are metrics that are a consequence of the design decisions made above and provide a good overview on how well the solution fits a certain usage scenario.

* Relevant Metrics
  * Average network degree
  * Message duplication factor
  * Message usefulness ratio (operational msgs vs actual messages relevant for the applications)


### Next week:
- Read relevant solutions using unstructured network (papers mentioned above)
- Better define our solution subscription management and event dissemination through IPLD
- Improve the report draft on the relevant work area with all the notes gathered from the 4 relevant systems we are going to address. If possible also, improve the definition of our final solution.
