# HTTP input plugin
---

Here we deomnstrate the use of the `http` input plugin.
The events will be printed to stdout inside the container.

We configure 2 sources on 2 different ports: one source will not include a <parse> section, and
thus will receive JSON objects. The other will contain a <parse> section, so that we can send
a custom format.

The first endpoint listens on port 9880, and will receive regular JSON objects.

The second endpoint listens on port 9881, and we specify a regex in the configuration
to tell fluentd how to parse the incoming data.


## Usage
---

1. Run the docker-compose file:
```
$ docker compose up
```

2. Run curl requests to the first endpoint:
```
$ curl -X POST -d 'json={"event":"some-access"}' localhost:9880/myapp.access
```

3. Run curl requests to the second endpoint:
```
$ curl -X POST -d '123 Yoav Klein' localhost:9881/myapp.access
```

3. Take a look at the stdout of the container:
```
$ docker logs fluentd
```



