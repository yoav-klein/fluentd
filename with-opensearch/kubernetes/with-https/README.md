# With HTTPS
---

In these examples, we run the following configuration:

1. OpenSearch Deployment and Service
2. OpenSearch Dashboards Deployment and Service
3. fluentd DaemonSet which sends logs to OpenSearch

We run OpenSearch with HTTPS. This has some consequences on how we need to configure fluentd.

In `with-client-cert` we run fluentd with client certificate with which it authenticates to OpenSearch.
In `without-client-cert` we still run with HTTPS, but without client certificate authentication.


