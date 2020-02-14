FROM golang:1.13

LABEL "com.github.actions.name"="Go Benchmark"
LABEL "com.github.actions.description"="Compare Go benchmarks"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="blue"

LABEL "version"="1.0.0"
LABEL "repository"="https://github.com/shipt/go-benchmark-action"
LABEL "homepage"="https://github.com/shipt/go-benchmark-action"
LABEL "maintainer"="Wally Shirey <waltshirey@gmail.com>"


RUN apt-get update && \
    apt-get install -y jq git && \
    go get -u golang.org/x/perf/cmd/benchstat

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
