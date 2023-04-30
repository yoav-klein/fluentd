# With HTTPS
---

In these examples, we run OpenSearch with HTTPS. This has some consequences on how we need to configure fluentd.

In `with-client-cert` we run fluentd with client certificate with which it authenticates to OpenSearch.
In `without-client-cert` we still run with HTTPS, but without client certificate authentication.
In `skip-tls-verification` we also run with HTTPS, but without verification at all.


