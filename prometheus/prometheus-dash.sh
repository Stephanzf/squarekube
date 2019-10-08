#!/bin/bash
#Point a web browser to localhost:9090 to view the Prometheus console:
kubectl --namespace=prometheus port-forward deploy/prometheus-server 9090
