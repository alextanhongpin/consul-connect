# consul-connect

Exploring consul connect usage and integration with docker/kubernetes.
```
$ make consul-members
$ make consul-"members -detailed"

# Alternatively, make a curl to the http rest api.
$ curl localhost:8500/v1/catalog/nodes

# DNS lookup: Note, the port 8600/udp must be exposed in order to make this call.
$ dig @127.0.0.1 -p 8600 machine.node.consul
```

## Service

Example service in `consul.d/`
```bash
$ dig @127.0.0.1 -p 8600 web.service.consul

# To retrieve the entire address/port pair as SRV record.
$ dig @127.0.0.1 -p 8600 web.service.consul SRV

# Filter the services by tags, e.g. TAG.NAME.service.consul
$ dig @127.0.0.1 -p 8600 rails.web.service.consul

# With HTTP REST API
$ curl localhost:8500/v1/catalog/service/web
```

## Service with scripts check

```json
{
    "service": {
        "name": "web",
        "tags": ["rails"],
        "port": 80,
        "check": {
            "args": ["curl", "localhost"],
            "interval": "10s"
        }
    }
}
```
