# consul-connect

Exploring consul connect usage and integration with docker/kubernetes.
```
$ make consul-members
$ make consul-"members -detailed"

# Alternatively, make a curl to the http rest api.
$ curl localhost:8500/v1/catalog/nodes
```
