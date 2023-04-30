# Simple example
---

In this demo, we deomnstrate the use of the `tail` input plugin.

We use the same docker-compose configuration as in the `simple` example - i.e., fluentd
sends logs to OpenSearch.

In this configuration, we use the `tail` input plugin. We configure it to track the file `/var/logs/mylog.log`
each line in this file is an event, which is tagged with the tag `myapp.access`

Also, we use another output plugin: `stdout`, which just outputs the data to stdout.

## Usage
---

1. Run the docker-compose file:
```
$ docker compose up
```

2. Write data to the file:
```
$ docker exec -u 0 fluentd bash -c 'echo {\"data\":\"kuku\"} >> /var/log/mylog.access'
```

3. Take a look at OpenSearch Dashboards

Open OpenSearch Dashboards and look at the `fluentd` index. You'll see the events

4. Take a look at stdout
Run
```
$ docker logs fluentd
```
and you'll see the events on stdout
