# HTTP
---

In this configuration, we run OpenSearch with security plugin disabled - meaning - no TLS, and no authentication.
This is good primarily for testing purposes.


## Configuration details
* In `fluentd-ds.yaml` - the scheme is `http`, and the TLS related volume and environment variables are removed
* In `fluentd-cm.yaml` - the ca_file and all client certificate and key fields are removed
* In `opensearch.yaml` - the `plugins.security.disabled` variable is set to `true`

