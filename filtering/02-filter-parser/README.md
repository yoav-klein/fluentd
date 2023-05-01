# Parser filter
---

In this demo, we deomnstrate using the Parser filter plugin.

The logs that come into fluentd is constructed as such:
```
3214 {"level":"DEBUG","msg":"some log message"}
```

Our `<source>` defines a parsing regex that splits the number from the JSON object, so that 
a record will look like this:
```
{"msg_id":3214,"log_msg":"{"level":"DEBUG","msg":"some log message"}"}
```

Now, we want our record to include the `level` and `msg` fields as fields in the record. Currently
the `log_msg` is treated as a string.

For this, we use the parser filter plugin, to parse the `log_msg` field as JSON.

And now, a record will look like this:
```
{"msg_id":3214,"level":"DEBUG","msg":"some log message"}
```


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

