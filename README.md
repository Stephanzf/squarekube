# squarekube
Stress-testing an E-Commerce architecture based on Kubernetes+istio for prime-time workloads

Business Case: At 2018 Prime time sales - 3 minutes after opening, the website crashed. The e-commerce site was not able to handle the traffic surge. Cascading failures experienced in the next few hours. On the other hand, Alibaba had gained very successful expereince in their Double 11 Shopping Festivals in the past 10 years without major glitches.

Motivation: Seen Alibaba's success, this project proposes some strategies for preparing the next Prime time sales. It implements an e-commerce architecture based on Kubernetes plus an updated service mesh deployed in clusters. Stress-testing will be applied to the e-commerce microservices applications to simulate real workloads.

Engineering Challenges:

limited compute resources to simulate real workloads
Whether simulated stree testing can reveal most bottlenecks
Preconfingured strategies in case of exhausting hardware resources
