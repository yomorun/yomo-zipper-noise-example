FROM golang:buster

RUN apt-get update && \
    apt-get install nano iputils-ping telnet net-tools ifstat -y

RUN cp  /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  && \
    echo 'Asia/Shanghai'  > /etc/timezone

RUN go install github.com/yomorun/cli/yomo@latest; exit 0

WORKDIR $GOPATH/src/app
COPY workflow.yaml .

EXPOSE 9999/udp

CMD ["sh", "-c", "yomo serve -c workflow.yaml"]

