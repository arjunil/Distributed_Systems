# Distributed Systems

[Course Website](https://cse.buffalo.edu/~stevko/courses/cse486/spring19/syllabus.html)

This course covers the ins and outs of distributed systems, replication, distributed hash tables, chord (ring based routing), Amazon DynamoDB style key value persistent storage and retrival systems that come with high availability and fault tolerance and eventual consistency.

## Projects
These projects work incrementally towards building an Amazon DynamoDB style persistent, fault tolerant, key value storage.


### Project 1 - Sockets on AVDs
This is a basic setup project that allows socket reads and writes on AVDs (Android virtual devices)

### Project 2 - Group Messenger with multicast
Here, the focus is on building a content provider and implementing multicast.

### Project 3 - Group Messenger with Total and FIFO Ordering
This is where things get interesting. This projects involves implementing a Group Messenger with Total and FIFO Ordering guarantees under single failure.

### Project 4 - Simple Distributed Hash Table based on Chord
Another interesting project that implements a Simple Distributed Hash Table based on CHORD 
(http://www.cse.buffalo.edu/~stevko/courses/cse486/spring19/files/chord_sigcomm.pdf)
The implementation handles entry and exit of AVDs during operating, consistent hashing and ring based routing.


### Project 5 - Simple Amazon DynamoDB
And the cherry on the cake. A simplified version of Amazon's DynamoDB.
A replicated, fault tolerant key-value storage based on a DHT like Chord but without ring based routing as every node knows every other. Replication occurs on the two succeeding nodes in the ring, with a replication degree of 3 and read and write quorums of 2. It supports concurrent operations with failures.


Most of the tests were conducted on 5 AVD instances running in parallel with concurrent socket reads and writes.

Drawback of the existing code is that it hacks around the handshake using a sleep on the socket. Ideally a threeway handshake would ensure good crossplatform code.

# Final Remarks
The course itself was a rewarding experience as it covered engaging topics ranging from CAP, election algorithm, the impossibility of consensus, PAXOS, among other things.
As is inevitable, things will slip away from memory over the course of time.  So this summary is intended to help recollect all that went on in this stellar course.
A special note - The original PAXOS paper reads like a novel of epic proportions. Cheers to having the opportunity to know and read about it.

