# Dockerfiles for kubectl / {{ index (ds "versions") (math.Sub (len (ds "versions")) 1) }} - {{ index (ds "versions") 0 }}

[![](https://images.microbadger.com/badges/image/lwieske/kubectl.svg)](https://microbadger.com/images/lwieske/kubectl "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/lwieske/kubectl.svg)](https://microbadger.com/images/lwieske/kubectl "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/lwieske/kubectl.svg)](https://microbadger.com/images/lwieske/kubectl "Get your own commit badge on microbadger.com")

## **Dockerfiles** for [kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/) on [Alpine](https://registry.hub.docker.com/_/alpine/) for Docker Automated/Trusted Builds.

```
docker run -i -t lwieske/kubectl 
```

***

{{ range (ds "versions") -}}
### {{.}}

| Image | Badge |
| ----- | ----- |
| lwieske/kubectl:{{.}} | [![](https://images.microbadger.com/badges/image/lwieske/kubectl:{{.}}.svg)](https://microbadger.com/images/lwieske/kubectl:{{.}} "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/lwieske/kubectl:{{.}}.svg)](https://microbadger.com/images/lwieske/kubectl:{{.}} "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/lwieske/kubectl:{{.}}.svg)](https://microbadger.com/images/lwieske/kubectl:{{.}} "Get your own commit badge on microbadger.com") |

{{end}}