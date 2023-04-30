# tail input plugin
---

Here we deomnstrate the use of the `tail` input plugin.
We configure a `tail` source on the file `/var/log/mylog.log`.

We forward the events to OpenSearch, same as in the simple example.

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


