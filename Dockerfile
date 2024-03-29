# FROM golang:1.12-alpine
# RUN mkdir /app
# ADD ./main /app
# WORKDIR /app
# # COPY . /app
# # RUN go build -o main .
# CMD ["/main"]

FROM golang:1.12
WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]
