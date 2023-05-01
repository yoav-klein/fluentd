# Time parsing
---

In this demo, we deomnstrate how to parse time in events.

When you don't specify time in your events, fluentd uses the current time for the time field.
However, usually logs contain a time field, and fluentd will use that as the time of the event.

In this configuration we pass a time with each event: `2023-05-01 12:13:14`

This configuration is based on the `tail-input` configuration.
We add in the `<parse>` section the keys: 
* `time_key` - to specify what key in the JSON object holds the time.
* `time_type` - could be `float`, `unix`, or `string`. Default is string.
* `time_format` - The format of the time, used when `string` is chosen as type.


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
and you'll see the events on stdout
