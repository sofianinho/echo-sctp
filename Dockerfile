FROM golang:1.10-alpine

RUN apk add -U ca-certificates git \
  && git clone https://github.com/ishidawataru/sctp.git src/github.com/ishidawataru/sctp\
  && cd  src/github.com/ishidawataru/sctp/example \
  && CGO_ENABLED=0 go build -ldflags '-w -extldflags "-static"'

FROM scratch

COPY --from=0 /go/src/github.com/ishidawataru/sctp/example/example /app/echo-sctp

ENTRYPOINT ["/app/echo-sctp"]

