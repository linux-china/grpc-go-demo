# Start by building the application.
FROM golang:1.10.3 as build

RUN git clone https://github.com/linux-china/grpc-go-demo.git /go/src/github.com/linux_china/grpc-go-demo
WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

# Now copy it into our base image.
FROM gcr.io/distroless/base
COPY --from=build /go/bin/app /
CMD ["/app"]