#!/bin/bash

# make sure you have iptables rule enabels traffic inside the node
kubectl port-forward --address=0.0.0.0 -n storage svc/opensearch-dashboards  5601:5601
