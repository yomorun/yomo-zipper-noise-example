# yomo zipper for noise-example

This is part of the [example-noise](https://github.com/yomorun/example-noise), which describes how to write a [**noise-zipper**](https://github.com/yomorun/yomo-zipper-noise-example) to receive data from the source, and send it to the configured workflow unit, like [noise-flow](https://github.com/yomorun/yomo-flow-noise-example) and [noise-sink](https://github.com/yomorun/yomo-sink-socketio-server-example).

![arch1.png](https://github.com/yomorun/example-noise/raw/main/docs/arch1.png?raw=true)

## 🚀 Getting Started

### 1. Install CLI

> **Note:** YoMo requires Go 1.15 and above, run `go version` to get the version of Go in your environment, please follow [this link](https://golang.org/doc/install) to install or upgrade if it doesn't fit the requirement.

```bash
go install github.com/yomorun/cli/yomo@v0.1.3
```

### 2. Create your zipper service

#### Create the directory

```bash
$ mkdir -p $GOPATH/src/github.com/{YOUR_GITHUB_USERNAME}/yomo-zipper-noise-example && cd $_
```

#### Create  workflow.yaml

```yaml
name: Service
host: 0.0.0.0
port: 9999
functions:
  - name: NoiseServerless
  - name: SocketServer
```

host: change to the address of the actual deployed service

#### Run the service

```bash
yomo serve -c workflow.yaml
```

### Container

#### Docker Image

The case provides [Dockefile](https://github.com/yomorun/yomo-zipper-noise-example/blob/main/Dockerfile) files for packaging into images.

Also, you can get the official packaged image ([**noise-zipper**](https://hub.docker.com/r/yomorun/noise-zipper)) from the mirror repository.

```bash
docker pull yomorun/noise-zipper
```



#### Docker run

You can run the service with the following command: 

```bash
docker run --rm --name noise-zipper -p 9999:9999 yomorun/noise-zipper:latest
```

