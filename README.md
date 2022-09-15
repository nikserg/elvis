# Elvis - Git automation

<center>
<img src="img.png"  alt="Love me tender"/>
</center>
Elvis is a simple open-source automation tool for periodical operations on Git repositories written on PHP with handy Docker image.

## Usage

`docker run -v config.yaml:/config.yaml nikserg/elvis`

If there are docker commands in your config:

```shell
docker run --privileged --name dind -d docker:dind
docker run --rm --link dind:docker -v config.yaml:/config.yaml nikserg/elvis
```

## For contributors

To rebuild image:

```shell
docker build -t nikserg/elvis .
docker push nikserg/elvis
```