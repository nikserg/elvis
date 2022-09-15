# Elvis - Git automation

<center>
<img src="img.png"  alt="Love me tender"/>
</center>
Elvis is a simple open-source automation tool for periodical operations on Git repositories written on PHP with handy Docker image.

## Usage

### Linux

`docker run -v $(pwd)/config.yaml:/config.yaml -v "/var/run/docker.sock:/var/run/docker.sock" nikserg/elvis`

### Windows

`docker run -v %cd%\config.yaml:/config.yaml -v "//var/run/docker.sock:/var/run/docker.sock" nikserg/elvis`

## For contributors

To rebuild image:

```shell
docker build -t nikserg/elvis .
docker push nikserg/elvis
```