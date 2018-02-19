# Introduction

The publish-subscribe (pub-sub) interaction paradigm is an approach that has
received an increasing amount of attention recently [12] [10]. This is mainly due
to its special properties, that allow for full decoupling of all the communicating
parties. First we should define what the publish-subscribe pattern is. In this
interaction paradigm, subscribers (or consumers) sign up for events, or classes
of events, from publishers (or producers) that are subsequently asynchronously
delivered. Taking a closer look at this definition one can see that this comes hand
in hand with the way information is consumed nowadays, with the exponential
growth of social networks like Twitter and the usage of feeds such as RSS

The previously discussed decoupling can be broken in three different parts.
The decoupling in time, space and synchronisation. The time decoupling comes
from the fact that publishers and subscribers do not need to be actively interacting
with each other at the same time; this means that the publisher can
publish some events while the subscriber is disconnected and the subscriber can
be notified of an event whose publisher is disconnected. Space decoupling gives
both parties the benefit of not needing to know each other in order to communicate,
given that consumers and producers are focused on they are specific roles
(consuming/producing) and do not care for who is doing what, or how many
producers are for example. Synchronization decoupling is a consequence of the
asynchronous nature of the pub-sub pattern, as publishers do not need to be
blocked while producing events and subscribers can be asynchronously notified.
The decoupling that this kind of system offers makes it the ideal candidate for
very large networks that need a way to communicate in a efficient way.
