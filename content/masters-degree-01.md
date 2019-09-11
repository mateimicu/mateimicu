---
title: "Masters Degree week#1 - week#4"
date: 2018-10-28T20:03:53+02:00
draft: false
tags: ["master degree", "WAD", "ATNN", "DOS", "ATSE"]
---

In this series of posts, I'll try to keep a weekly summary of my progress in my master's degree.
If somebody finds this on the internet, I just started a master's degree that focuses on distributed systems at [Faculty Of Computer Science][info-iasi](part of [University Alexandu Ioan Cuza][uaic]).
<!--more-->

In my first semester I'll have the following courses:

- [Web Application Development][wad]
- [Advance Chapters of Neural Networks][acnn] (I also followed [Neural Networks][nn] the undergraduate course)
- [Distributed Operating Systems][sod] (the website might be password protected but I have the [course description][sod-cd])
- [Advanced Software Engineering Techniques][aset]

I was able to select the courses on my own (not follow a predefined curriculum) but an extra `research` component was added to my degree.
At the end of each semester, I'll have to present what research journey and a comity will decide if I passed, and can continue with my degree, or I
failed and have to switch to a normal master's degree (with a predefined curriculum). My research focus will be on distributed systems and as part of my
first semester, I'll try and grasp as much of the available literature as possible to come with a specific "thing" that I can focus my efforts on (besides the normal courses).


I'll try and keep a weekly update (maybe it will be useful for my coordinators or me when I have to present my progress), but as the semester started four weeks ago this update will contain the current status of my studies.


## Web Application Development

For this course, we will have to complete a project, from the proposed one I already chose [DiSyO][distyo], the project will be done in a team (I already paired with another two students). Not many updates on this course, we will have to start work for the project. Until now the course had a "fast-paced" recap of the [Web Systems Development][web] undergraduate course, but we are starting to move into the semantics web part of the course.

## Advance Chapters of Neural Networks

I already had the first homework (from the undergraduate course) in which we need to implement and train 
10 perceptions that recognize the numbers from the [MNIST dataset][MNIST].

For the second homework we need to implement a neural network that can recognize the numbers and train it using
gradient descent, it also must use softmax at the last layer and cross-entropy as the cost function. The weights should be
initialized properly also. Unfortunately, I could not find the implementation from the last year, everything is for the best as I also need
to work shroud the details again for this course.

## Distributed Operating Systems

I started work on the first homework that has two components:

- multiply two matrices in C and use [OpenMP][openmp] to parallelize the work in multiple manners (parallelize one for, all of them, variate the number of threads, etc ...)
- run multiple experiments and graph how the performance is impacted by the implementation and configuration, for example:
  * variate the number of threads
  * variate the number of cores on the host machine
  * what is the impact of containerization
  * what is the impact of vitalization
  * how various styles of parallelization of the code perform

The program is already written (with 6+1 methods of parallelization, basically parallelize of nor each one of the 3 `for` instruction involved in a matrix multiplication).
Next week I'll have to write a python wrapper that will feed various parameters and restriction to our C implementation and record the running time (and probably plot it).


## Advanced Software Engineering Techniques

For this course, we have to implement a project that we decide on in a team (also here I already got two colleges). We decided to analyze the scalability of a multi-cloud function as a service (we might use as a base [Kubeless][kubeless]). The two partners for this project are focused on Data Science and Machine Learning and my focus will be on the infrastructure and Function as a service part (I already have experience with AWS, OpenStack, Terraform and Kubernetes and I can do most of the work on this part).


## Research

In this category I'll put the progress on the research side, articles I read/plan to read and what I'm trying to understand at the moment.


###### Done Reading/Viewing

- [Vogels, W. (2009). Eventually consistent. Communications of the ACM, 52(1), 40-44](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.187.8545&rep=rep1&type=pdf)
- [What Makes for a Successful Protocol?](https://tools.ietf.org/html/rfc5218)
- [Wiesmann, M., Pedone, F., Schiper, A., Kemme, B., & Alonso, G. (2000). Understanding replication in databases and distributed systems. In Distributed Computing Systems, 2000. Proceedings. 20th International Conference on (pp. 464-474). IEEE.](https://infoscience.epfl.ch/record/52326/files/IC_TECH_REPORT_199935.pdf)
- [Khoshkbarforoushha, A., Wang, M., Ranjan, R., Wang, L., Alem, L., Khan, S. U., & Benatallah, B. (2016). Dimensions for evaluating cloud resource orchestration frameworks. Computer, 49(2), 24-33.](http://dlib.scu.ac.ir/bitstream/Hannan/168669/1/7404193.pdf)
- [Ranjan, R., Benatallah, B., Dustdar, S., & Papazoglou, M. P. (2015). Cloud resource orchestration programming: overview, issues, and directions. IEEE Internet Computing, 19(5), 46-56.
](http://www.infosys.tuwien.ac.at/staff/sd/papers/Zeitschriftenartikel%202015%20S.%20Dustdar%20Cloud%20Resource.pdf)
- [Baur, D., Seybold, D., Griesinger, F., Tsitsipas, A., Hauser, C. B., & Domaschka, J. (2015, December). Cloud orchestration features: Are tools fit for purpose?. In Utility and Cloud Computing (UCC), 2015 IEEE/ACM 8th International Conference on (pp. 95-101). IEEE.](https://www.researchgate.net/profile/Athanasios_Tsitsipas/publication/290429973_Cloud_Orchestration_Features_Are_Tools_Fit_for_Purpose/links/58c0367b92851cbfd30bbfd3/Cloud-Orchestration-Features-Are-Tools-Fit-for-Purpose.pdf)
- [A Brief Tour of FLP Impossibility](https://www.the-paper-trail.org/post/2008-08-13-a-brief-tour-of-flp-impossibility/)
- [5.13 Paxos: The FLP Proof 20:36](https://www.youtube.com/watch?v=r6DZH7ETG5M)
- [Fischer, M. J., Lynch, N. A., & Paterson, M. S. (1982). Impossibility of Distributed Consensus with One Fault Process (No. RR-245). YALE UNIV NEW HAVEN CT DEPT OF COMPUTER SCIENCE.](http://www.dtic.mil/dtic/tr/fulltext/u2/a120161.pdf) 
- [Distributed systems for fun and profit](http://book.mixu.net/distsys/)
- [Helland, P., & Campbell, D. (2009). Building on quicksand. arXiv preprint arXiv:0909.1788.](https://arxiv.org/pdf/0909.1788.pdf)
- [Google I/O 2009 - Transactions Across Datacenters..](https://www.youtube.com/watch?v=srOgpXECblk)
- [Distributed Consensus Making Impossible Possible - Heidi Howard - JOTB16](https://www.youtube.com/watch?v=XUQJvMALfUA)
- [Raft lecture (Raft user study)](https://www.youtube.com/watch?v=YbZ3zDzDnrw)

###### Future Work
I want to get familiar with LaTex again (I used it in my undergraduate studies a bit but I need to re-learn it) and also read [Alpern, B., & Schneider, F. B. (1987). Recognizing safety and liveness. Distributed computing, 2(3), 117-126.](https://ecommons.cornell.edu/bitstream/handle/1813/6567/86-727.pdf?sequence=1)



Unfortunately, I had to make my homework repository private (there were some incidents where somebody presented my work) and I can't link the work now, but I will think if I can make it public again or start another one with only the work from my master degree.


[info-iasi]: https://www.info.uaic.ro/bin/Main/
[uaic]: http://www.uaic.ro/
[wad]: https://profs.info.uaic.ro/~busaco/teach/courses/wade/
[acnn]: https://sites.google.com/view/rbenchea/advanced-chapters-of-neural-networks
[nn]: https://sites.google.com/view/rbenchea/neural-networks
[sod]: https://profs.info.uaic.ro/~vidrascu/MasterSOD/index.html
[aset]: https://profs.info.uaic.ro/~adiftene/Scoala/2019/ASET/index.html
[sod-cd]: https://profs.info.uaic.ro/~webdata/planuri/master/ro/MSD1104O1.pdf
[distyo]: https://profs.info.uaic.ro/~busaco/teach/courses/wade/projects/#distributed-os-onto
[web]: https://profs.info.uaic.ro/~busaco/teach/courses/websys/
[MNIST]: http://yann.lecun.com/exdb/mnist/
[openmp]: https://www.openmp.org/
[kubeless]: https://kubeless.io/

