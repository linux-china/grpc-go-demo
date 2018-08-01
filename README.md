gRPC Golang Demo
================

## Setup

* Generate stub
```
$ protoc -I greeter_api --go_out=plugins=grpc:greeter_api greeter_api/greeter.proto
$ cd greeter_server
$ go run main.go
```

# Docker build
```
docker build -t linuxchina/grpc-demo .
```

# Testing

Please use https://github.com/ktr0731/evans for grpc testing