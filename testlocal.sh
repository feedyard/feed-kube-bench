#!/usr/bin/env bash
set -euo pipefail

inspec exec --no-distinct-exit profiles/cis-docker
CID="$(docker run -it -d --entrypoint ash local/feedyard-kube-bench:latest)"
inspec exec profiles/feedyard-kube-bench/ -t docker://$CID
docker rm -f $CID
