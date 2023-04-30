# Without client certificate
---

In this configuration we configure OpenSearch with TLS certificates.
In this case, we don't use client ceritificate. For this, we need to override
the `fluent.conf` file so that the fields associated with client certificates are deleted.

## Differences from the with-client-cert example
---

* In `flunet-tls-cm.yaml` we only configure the CA, not the client certifiate and key.
* We override the `fluent.conf` file with our own version of it, in which we remove the 
keys associated with the client certificate and key.


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
