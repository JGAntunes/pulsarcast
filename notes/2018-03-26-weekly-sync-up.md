# Weekly Sync Up - March 26th, 2018

## Attendees:

- João Antunes
- [ ] Luís Veiga
- [ ] David Dias

## Agenda

- Status update:
 - Still unable to use pubsub between containernet hosts out of the box, even with the experimental flag on. I'll need to debug this further. I remember when playing with Curvatron I needed to tweak the bootstrap list in order for the pubsub to work.
 - Working on ping, as it would be useful to debug connections, but turns out it was harder then it seems... ETOOMANYSTREAMTYPES :cry:
   - Made the needed changes to the `js-ipfs-api`
   - It has been harder to do it in `js-ipfs`, trying to replicate the `go-ipfs` logic. Seems like the `pull-stream-to-stream` module returns streams incompatible with HapiJS and meanwhile I've found some issues with the actual libp2p-ping module - https://github.com/libp2p/js-libp2p-ping/pull/69
 - As I need to move on, I'll start working on my module this week and revisit the test-harness work along the road

## TODOS
