# squarekube

Performance and resilience testing of distributed applications deployed as micro services on a Kubernetes cluster with service mesh

Business Case: 

At 2018 Prime time sales - 3 minutes after opening, the famous e-commerce website crashed. The e-commerce site was not able to handle the traffic surge. Cascading failures experienced in the next few hours. 

On the other hand, other e-commerce giants had gained successful experience in their shopping festival campaigns in the past several years without major glitches.

Motivation: 

A cascading failure of a distributed application could result in large financial losses. An Amazon study shows that a one-second lagging of loading time of their website could amount to $1.6B losses annually. Walmart has published similar stats that a one-second faster responding time of their website increases the conversion rate by 2 percent.  


Engineering Challenges:

- How to simulate distributed workloads
- When traffic surges 20 times, how to auto scale
- When fails happen, how to self-heal
