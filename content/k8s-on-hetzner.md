---
title: "K8s on Hetzner Cloud"
date: 2020-07-12T17:42:29+03:00
draft: false
---

I was looking at having a long-running k8s cluster for testing and pet projects, [Hetzner Cloud][hetzner-cloud] looks like a good initiative.
<!--more-->

### Goal
Have a running k8s cluster that fits the following criteria:

* Secure - the cluster will be exposed to the internet
* Scalable - I'm not sure what I will run on it, probably a lot of side projects and data mining projects, so I would like to scale it from time to time. At the same time scalability (elasticity) helps ensure the cluster is not fragile
* Replicable - I want to spin a new cluster, destroy this one and recreate it at will. Replicability is partially related to scalability/elasticity but also about bootstrapping the cluster

Also, a few restrictions (side quests) needed for this:

* learn more about security and k8s internals
* don't spend a lot of money
* going for a managed solutions is cheating (for now)

### Why [Hetzner Cloud][Hetzner-Cloud]

I already have experience with [EKS](eks) and [K8s on DigitalOcean](do-k8s), but they can get a bit expensive (especially if you start using other services).

There is a good post [Affordable Kubernetes Cluster by Remko Seelig][affordable-kubernetes-cluster] about using [GKE][gke] with [preemptible nodes][preemptible-nodes], but the cluster does not have a lot of computing power.

I already looked at [Kubernetes The Hard Way][kubernetes-the-hard-way] and remembered that [Hetzner Cloud][hetzner-cloud] offers pretty cheap compute instances (starts at 2,89 €).
Working with [Hetzner Cloud][hetzner-cloud] means that I have to run control plane myself, this may cut in my processing power but has the advantage that I should get a more in-depth look at how it works.

| Cloud Provider | Control Plane cost                                                                        | worker nodes (8vCPU 16GB ram)                                                | worker nodes count | Min Cost           | Max Cost           |
|----------------|-------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|--------------------|--------------------|--------------------|
| Google (gke)   | 0 (for single-zone or multi-zonal)  $0.10 per hour (± 73$ per month) for regional cluster | 31.86$* -> 105$ ~ 9 * g1-small * preemptible price                           | 9                  | 32$                | 105$               |
| AWS (EKS)      | $0.10 per hour (± 73$ per month)                                                          | 28$* -> 146$ ~ 4 * a1.large in Ohio * spot insance price                     | 4                  | 91$                | 219$               |
| Azure (AKS)    | 0                                                                                         | $26* -> $265.72 ~ 4 * A2 v2 in East US2 * for maximum spot instance discount | 4                  | 26$                | 265$               |
| Linode         | 0                                                                                         | $80 ~ 4 * (2vCPU 4GB ram)                                                    | 4                  | 80$                | 80$                |
| Digital Ocean  | 0                                                                                         | $80 ~ 4 * (2vCPU 4GB ram)                                                    | 4                  | 80$                | 80$                |
| Hetzner Cloud  | 5.7€ (assuming CX21 have enough resources)                                                | ± 22 € (4 CX21)                                                              | 4                  | 27.7€ (around 32$) | 27.7€ (around 32$) |


There are a few caveats with each solution:

* preemptible/spot instances can be shut down; we can run part of the instances as normal ones and have smart auto-scaling to provision more if needed
* spot instance costs can vary for AWS and Azure (preemptible instances have a fixed price on Google)
* with cloud providers (Google, AWS, Azure, DigitalOcean, Linode) other costs can occur (you can avoid them if you really want):
  - extra storage costs (PV's for example)
  - data transfer/networking costs
  - backup costs
  - logging costs (for example shipping logs to CloudWatch)
  - load balancer costs
* [GKE][gke] with g1-small may not be worth it as the instance is pretty underpowered
* Running the control plane can be tricky (this is why most of the cloud providers offer managed control plane)

One big advantage of running the control plane and doing everything from scratch is the learning process (one of the side quests for this pet project).
[Hetzner Cloud][hetzner-cloud] has a simple offering, I hope to get support (at least beta) for multiple things:

* [cluster auto scaler][cluster-auto-scaler]
* [cluster api][cluster-api] (looks like somebody is starting a business around this [upwork job][upwork-hcloud-job] and [github cluster api for hcloud][github-cluster-api-hcloud])


### Existing resources and approaches

Looking online there is already some work done in this direction

* [github cluster api for hcloud][github-cluster-api-hcloud] looks like the exact thing I want
* [hoby-kube][hoby-kube] seems to have a complete guide
* There is also some documentation from [Hetzner Cloud][hetzner-cloud]:
  * [Install a Kubernetes cluster on cloud servers][hcloud-install-kubernetes-cluster]
  * [Create a Microk8s Cluster][hcloud-create-microk8s-cluster]
* [Create a complete cheapo Kubernetes cluster][cheapo-k8s]
* [How to create a Kubernetes cluster with Rancher on Hetzner][k8s-hetzner-with-rancher]
* [hetzner-kube][hetzner-kube]
* [Kubernetes on Hetzner Cloud: Setup a Kubernetes Cluster][kubernetes-hetzner-setup]

There are also multiple installers for k8s; we can even consider [k3s][k3s] or [microk8s][microk8s]


### Next Steps

I'll probably look more at [cluster api][cluster-api] and try to figure out how it works



[hetzner-cloud]: https://www.hetzner.com/cloud
[eks]: https://aws.amazon.com/eks/
[kubernetes-the-hard-way]: https://github.com/kelseyhightower/kubernetes-the-hard-way
[do-k8s]: https://www.digitalocean.com/products/kubernetes/
[affordable-kubernetes-cluster]: https://devonblog.com/containers/affordable-kubernetes-cluster/
[gke]: https://cloud.google.com/kubernetes-engine
[preemptible-nodes]: https://cloud.google.com/kubernetes-engine/docs/how-to/preemptible-vms
[cluster-auto-scaler]: https://github.com/kubernetes/autoscaler/issues/2054
[cluster-api]: https://github.com/kubernetes-sigs/cluster-api
[upwork-hcloud-job]: https://www.upwork.com/jobs/Make-Kubernetes-cluster-production-ready-Hetzner-cloud-using-the-Cluster-API_~01c7e42d8122ac97ad
[github-cluster-api-hcloud]: https://github.com/cluster-api-provider-hcloud/cluster-api-provider-hcloud/
[hoby-kube]: https://github.com/hobby-kube/guide
[hcloud-install-kubernetes-cluster]: https://community.hetzner.com/tutorials/install-kubernetes-cluster
[hcloud-create-microk8s-cluster]: https://community.hetzner.com/tutorials/create-microk8s-cluster
[cheapo-k8s]: https://www.tmjohnson.co.uk/posts/k8s/
[k8s-hetzner-with-rancher]: https://medium.com/@jmrobles/how-to-create-a-kubernetes-cluster-with-rancher-on-hetzner-3b2f7f0c037a
[hetzner-kube]: https://github.com/xetys/hetzner-kube
[kubernetes-hetzner-setup]: https://metawave.ch/posts/kubernetes-hetzner-setup/
[k3s]: https://k3s.io/
[microk8s]: [https://microk8s.io/]
