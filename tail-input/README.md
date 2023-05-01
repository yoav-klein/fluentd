# tail
---

In this demo, we deomnstrate the use of the `tail` input plugin.

In this configuration, we use the `tail` input plugin. We configure it to track the file `/tmp/logs/*.log`
each line in this file is an event, which is tagged with the tag `*.myapp.access`

The * is expanded to the file path, with `/` replaced with `.`. So that a line in the file 
`/tmp/logs/mylog3.log` will be tagged as `tmp.logs.mylog3.log.myapp.access`

Also, we define an exclude path to exlude any file with `ignore` in the file name.

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

Notice that you don't see logs written to the `ignore` file
