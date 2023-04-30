# With client certificate
---

In this configuration we configure OpenSearch with TLS certificates.
Fluentd is configured with a client certificate.

## TLS
---
We create TLS infrastructure:
* CA
* server certificate and key for Opensearch
* client certificate and key for fluentd

We put these certificates in ConfigMaps `opensearch-tls-cm.yaml` and `fluentd-tls-cm.yaml`

## Usage
---

1. Apply the files:
```
$ kubectl apply -f .
```

NOTE: you may need to run this twice because of the order - opensearch-dashboards.yaml may be applied
before opensearch.yaml, so it will fail because the namespace doesn't exist yet.

2. Port forward `opensearch-dashboards` service:
```
$ ./port-forward.sh
```

3. You can access it using a browser

4. Verify that fluentd interacts with Opensearch:

```
$ kubectl logs -n kube-system fluentd-<some-hash>
```
