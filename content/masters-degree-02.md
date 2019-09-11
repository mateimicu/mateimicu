---
title: "Masters Degree First Year Update."
date: 2018-11-10T20:03:53+02:00
draft: false
tags: ["master degree", "WAD", "ATNN", "DOS", "ATSE", "ebs", "svs", "pcd"]
---

Update for the first year, it wasn't quite weekly like mentioned in the last post ;).
Because some time passed I'll only give a short summary.
<!--more-->

Coursers for the first semester:

- [Web Application Development][wad]
- [Advance Chapters of Neural Networks][acnn] (I also followed [Neural Networks][nn] the undergraduate course)
- [Distributed Operating Systems][sod] (the website might be password protected but I have the [course description][sod-cd])
- [Advanced Software Engineering Techniques][aset]

Courses for the second semester:

- [Event-based systems][ebs]
- [Specification and verification of distributed systems][svs]
- [Pragmatical aspects related to cloud computing][https://www.qwiklabs.com/]
- [Distributed and parallel programming ][pcd]

## Web Application Development

On this course, we progressed to [RDF][rdf] and got an introduction to [SPARQL][sparql]. During the laboratories and courses, we also explored different ways to use/create and manipulate Semantic Data.

Here my team's final project took all the projects from [Cloud Native Computing Foundation Landscape][cncf-landscape] ) mapped it into an Ontology about distributed and CloudNative software projects and in combinations with [schema.org](schema.org) we could have some smart queries in order to help a developer  choose the best type of technology based on license, GitHub metrics, technologies used, etc ... .


## Advance Chapters of Neural Networks

Implemented successfully the [MNIST dataset][MNIST] homework.

For the final project, we classified [CIFRA10][cifra10] dataset and we were graded based on our accuracy. The model was a  convolutional neural network.

## Distributed Operating Systems

The python wrapper for the last homework used numpy and pandas to plot graphs of the results.

For the second and third homework, we had to implement various operations for images (very similar to matrics operations), break the processing in multiple chings and schedule them on workers run with  [OpenMP][openmp].

For the research part, I had a presentation about [Lamport, L. (2006). Fast paxos. Distributed Computing, 19(2), 79-103.](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.159.4643&rep=rep1&type=pdf)

## Advanced Software Engineering Techniques

Our solution examines the running pattern of various functions running in  [Kubeless][kubeless] and predicts the load allowing us the possibility to scale up/down when needed.

# Second Semester 

## Event-based systems
Here the focus on all the types of event-based systems,  we analyzed topic-based systems, content-based systems, how they are implemented and the pros and cons to all of them.
We also analyzed various researched papers. 
Four the final project we have created a broker overlay over [NATS][nats] that is a topic-based streaming platform) that implement content-based filtering: you specify the property of the content that you are interested in and the brokers will stream to you all the messages that match. The project is extremely experimental but is available [here](https://github.com/mateimicu/nats-overlay-broker)

My team also took a closer look at [de Assuncao, M. D., da Silva Veith, A., & Buyya, R. (2018). Distributed data stream processing and edge computing: A survey on resource elasticity and future directions. Journal of Network and Computer Applications, 103, 1-17.](https://arxiv.org/pdf/1709.01363.pdf)


## Specification and verification of distributed systems

This course was mostly based on theory and exercises and we looked at various semantics and mathematical(logics) models that can help us specify and check various properties of distributed systems. 

For the practica side (except exercises) we looked at [CPN Tools
][cpn-tools]

## Distributed and parallel programming 

Here an overview of cloud paradigms and offerings was presented from a research perspective. 

Our projects revolved around architecting distributed applications based on various other technologies (blockchain for example) that can implement highly sensitive tasks, we looked at how we can ensure using blockchain the fair use of data streams provided by IoT devices. 

## Pragmatical aspects related to cloud computing 

This course was actually about [AWS][aws] and it was presented by engineers working on the tools using [qwiklabs](https://www.qwiklabs.com/). It presented various architectures used for creating cloud-native applications and how we can leverage tools from [AWS][aws].

# Research

In this category I'll put the progress on the research side, articles I read/plan to read and what I'm trying to understand at the moment.


###### Done Reading/Viewing

- [Building consistent transactions with inconsistent replication](https://www.youtube.com/watch?v=yE3eMxYJDiE)
- [A Brief History of Information-Centric Network](https://drive.google.com/file/d/1oLOS6U1GiXFUJQ_w7HssO_YVVrH204sT/view)
- [Nakadi SQL engine](https://www.youtube.com/watch?v=wPxn7lBSUnQ)
- [Nakadi event broker](http://mirroronet.pl/pub/mirrors/video.fosdem.org/2018/H.2215%20(Ferrer)/nakadi.webm)
- [Streaming Events for 100s of teams](https://mirror.as35701.net/video.fosdem.org/2019/UA2.118/nakadi.mp4)
- [Notes on Distributed Systems for Young Bloods](https://www.somethingsimilar.com/2013/01/14/notes-on-distributed-systems-for-young-bloods/)
- [Distributed systems theory for the distributed systems engineer
](https://www.the-paper-trail.org/post/2014-08-09-distributed-systems-theory-for-the-distributed-systems-engineer/)
- [Pahl, C., & Lee, B. (2015, August). Containers and clusters for edge cloud architectures--a technology review. In 2015 3rd international conference on future internet of things and cloud (pp. 379-386). IEEE.
](http://doras.dcu.ie/20641/1/FICloud15-EdgeCloudContainer.pdf)
- [Sonkoly, B., Czentye, J., Szabo, R., Jocha, D., Elek, J., Sahhaf, S., ... & Risso, F. (2015). Multi-domain service orchestration over networks and clouds: a unified approach. ACM SIGCOMM Computer Communication Review, 45(4), 377-378.
](https://biblio.ugent.be/publication/7144309/file/7144339)
- [Practical Distributed Consensus using HashiCorp/raft](https://www.youtube.com/watch?v=EGRmmxVFOfE)


###### Future Work

- [Alpern, B., & Schneider, F. B. (1987). Recognizing safety and liveness. Distributed computing, 2(3), 117-126.](https://ecommons.cornell.edu/bitstream/handle/1813/6567/86-727.pdf?sequence=1)
- [Höfer, C. N., & Karagiannis, G. (2011). Cloud computing services: taxonomy and comparison. Journal of Internet Services and Applications, 2(2), 81-94.](https://link.springer.com/content/pdf/10.1007/s13174-011-0027-x.pdf)
- [Van Renesse, Robbert & Guerraoui, Rachid. (2010). Replication Techniques for Availability. 5959. 19-40. 10.1007/978-3-642-11294-2_2. ](https://www.researchgate.net/profile/Robbert_Van_Renesse/publication/221029788_Replication_Techniques_for_Availability/links/0c96052b26a4fc846a000000.pdf)
- [ACM Transactions on Computer Systems 16, 2 (May 1998), 133-169.  Also appeared as SRC Research Report 49. ](http://lamport.azurewebsites.net/pubs/lamport-paxos.pdf)
- [A CRDT Primer Part I: Defanging Order Theory
](http://jtfmumm.com/blog/2015/11/17/crdt-primer-1-defanging-order-theory/)
- [Armbrust, Michael & Fox, Armando & Griffith, Rean & Joseph, Anthony & Katz, Randy & Konwinski, Andy & Lee, Gunho & Patterson, David & Rabkin, Ariel & Stoica, Ion & Zaharia, Matei. (2010). A View of Cloud Computing. Commun. ACM. 53. 50-58. 10.1145/1721654.1721672. ](http://delivery.acm.org/10.1145/1730000/1721672/p50-armbrust.pdf?ip=89.136.123.38&id=1721672&acc=OPEN&key=4D4702B0C3E38B35%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35%2E6D218144511F3437&__acm__=1568230945_600b4bf2d68ca1aa70ae9e72f6291ded)
- [Attiya, H., & Welch, J. L. (1994). Sequential consistency versus linearizability. ACM Transactions on Computer Systems (TOCS), 12(2), 91-122.](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.133.4969&rep=rep1&type=pdf)
- [Gray, J., Helland, P., O'Neil, P., & Shasha, D. (1996). The dangers of replication and a solution. ACM SIGMOD Record, 25(2), 173-182.](http://db.cs.berkeley.edu/cs286/papers/dangers-sigmod1996.pdf)
- [Schneider, F. B. (1990). Implementing fault-tolerant services using the state machine approach: A tutorial. ACM Computing Surveys (CSUR), 22(4), 299-319.](http://blough.ece.gatech.edu/8813/schneider_state_machine.pdf)

And I still need to get familiar with LaTeX


[wad]: https://profs.info.uaic.ro/~busaco/teach/courses/wade/
[acnn]: https://sites.google.com/view/rbenchea/advanced-chapters-of-neural-networks
[nn]: https://sites.google.com/view/rbenchea/neural-networks
[sod]: https://profs.info.uaic.ro/~vidrascu/MasterSOD/index.html
[aset]: 
https://profs.info.uaic.ro/~adiftene/Scoala/2019/ASET/index.html
[ebs]:  https://profs.info.uaic.ro/~eonica/ebs/
[svs]:  https://profs.info.uaic.ro/~webdata/planuri/master/MSD2FS01-ro.pdf
[pcd]: https://profs.info.uaic.ro/~adria/teach/courses/pcd/
[kubeless]: https://kubeless.io/
[cncf-landscape]: https://landscape.cncf.io/
[rdf]: https://www.w3.org/2001/sw/wiki/RDF
[sparql]: https://en.wikipedia.org/wiki/SPARQL
[nobel-prize]: http://data.nobelprize.org/
[MNIST]: http://yann.lecun.com/exdb/mnist/
[cifra10]: https://www.cs.toronto.edu/~kriz/cifar.html
[nats]: https://github.com/nats-io/nats-streaming-server
[cpn-tools]: http://cpntools.org/
[aws]: https://aws.amazon.com/
