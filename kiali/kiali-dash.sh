#!/bin/bash
#http://localhost:20001/kiali/console:
kubectl -n istio-system port-forward svc/kiali 20001:20001 &
