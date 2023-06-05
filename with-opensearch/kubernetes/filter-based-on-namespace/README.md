# Filter based on namespace
---

In this configuration, we want to demonstrate how to run fluentd in Kubernetes, and keep only logs from a certain namespace.
This configuration builds on the `with-https/no-client-cert` example.

Take a look at the  `<filter>` section in the `fluentd-cm.yaml` file. We use type `grep` to 
filter only the records that the `kubernetes.namespace_name` field contains the "digi" word.

So here we create a demo application in both the `digi` namepsace and the default namespace.

## Prepare
* Create a EKS cluster, or whatever kubernetes cluster you like.
* Configure you kubeconfig
* Make sure you run `sudo iptables -P INPUT ACCEPT` so you can access OpenSearch Dashboards

## Usage

1. Apply all the YAMLs:
```
$ kubectl apply -f .
```

This creates the fluentd DaemonSet, and our demo applications.

2. Now browse to Opensearch Dashboards using the `port-forward.sh` command. You should see only the records from the `digi` pod.
