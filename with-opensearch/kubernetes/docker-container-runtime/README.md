# Docker container runtime
---

In this configuration we demonstrate the use of fluentd in a cluster with Docker container runtime.

When using Docker container runtime, logs are written to a different location, and are of different format.

The format in which docker writes logs to the filesystem is as such:
```
{"time":"12-12-2020T12:12:12.123445678Z","stream":"stdout","log":"my log message"}
```

For this, we configure 2 thigs differently:
1. The path to which we do the mounts are different.
2. We configure the `<parse>` section to use the json type, since it's on JSON format.

## Prepare
* Create a EKS cluster, with version 1.23 or below.
* Configure you kubeconfig
* Make sure you run `sudo iptables -P INPUT ACCEPT` so you can access OpenSearch Dashboards

## Usage

1. Apply all the YAMLs:
```
$ kubectl apply -f .
```

