# Record Transformer
---

Based on the `http-input` example.

one of the filter types is `record_transformer`. This is a filter type
that can modify events.

in our case, we want to add a field `context` to each event, with the value read from 
an environment variable CONTEXT.


## Usage
---

1. Run the docker-compose file:
```
$ docker compose up
```

2. Run curl requests to the second endpoint:
```
$ curl -X POST -d '123 Yoav Klein' localhost:9881/myapp.access
```

3. Take a look at the stdout of the container:
```
$ docker logs fluentd
```



