# Simple example
---

In this demo, we setup fluentd to forward data to OpenSearch.

We have a `docker-compose.yaml` file which runs the following containers:
1. OpenSearch
2. OpenSearch Dashboards
3. Fluentd
4. httpd

The sources of fluentd are `forward` and `http`.
The `forward` source receives data from an instance of httpd which runs in the docker-compose configuration.

The `http` source is listening on port 9880 for HTTP requests, and forwards the data received to OpenSearch.

## Usage
---

1. Run the docker-compose file:
```
$ docker compose up
```

2. Issue requests to httpd:
```
$ curl localhost:80
```

This will forward events with the tag `httpd.access` to fluentd.

3. Run curl requests to fluentd:
```
$ curl -X POST -d 'json={"event":"some-access"}' localhost:9880/myapp.access
```

4. Take a look at OpenSearch Dashboards

Open OpenSearch Dashboards and look at the `fluentd` index. You'll see the events


