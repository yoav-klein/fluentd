# Filter out events
---

In this demo, we deomnstrate filtering out events based on regex.

Only records whose `message` field contain `cool` will be processed.
Only records whose `host` field contain `www.<integer>example.com` will be processed.
Records whose `message` field contain `uncool` will not be processed

## Usage
---

1. Run the docker-compose file:
```
$ docker compose up
```

2. Write data to files
```
$ ./generate_data.sh
.. after a while
^C
```

3. Take a look at stdout
Run
```
$ docker logs fluentd
```
and you'll see the events on stdout.

