# Docker Compose
---

Here we demonstrate how to set up fluentd and OpenSearch using Docker compose.

We set up the following containers:
1. OpenSearch
2. OpenSearch Dashboards
3. fluentd
4. httpd

fluentd receives logs from httpd, and forwards them to OpenSearch.

We configure fluentd with the following input sources:
1. `forward` - for httpd
2. `http`


## Usage
---

1. Run the docker-compose file:
```
$ docker compose up -d --build
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

## Notes
---

* We configured the output to be both OpenSearch and stdout - this is for debugging and learning purposes
* We define an environment variable for the fluentd container: `FLUENT_OPENSEARCH_LOGSTASH_FORMAT: true`. this will make the index name 
be named `logstash-<date>`, and for each record will add a `@timestamp` field
