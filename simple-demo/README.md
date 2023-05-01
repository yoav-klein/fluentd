# HTTP input plugin
---

Here we deomnstrate the use of the `http` input plugin.

The events will be printed to stdout inside the container.

## Usage
---

1. Run the docker-compose file:
```
$ docker compose up
```

2. Run curl requests to fluentd:
```
$ curl -X POST -d 'json={"event":"some-access"}' localhost:9880/myapp.access
```

3. Take a look at the stdout of the container:
```
$ docker logs fluentd
```



