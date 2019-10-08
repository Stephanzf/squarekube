#!/bin/bash
kubectl -n istio-system port-forward svc/kiali 20001:20001 &
