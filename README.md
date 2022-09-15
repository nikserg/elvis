# Elvis - SSH automation

<center>
<img src="img.png"  alt="Love me tender"/>
</center>
Elvis is a simple open-source automation tool for periodical SSH operations on multiple servers.

## Install

```shell
composer require nikserg/elvis
cp config.example.yaml config.yaml
```

## Usage

```shell
php elvis [config-file]
```

If no `[config-file]` provided, Elvis will seek for `config.yaml` in current directory.