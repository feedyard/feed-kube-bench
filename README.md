# feedyard-kube-bench [![CircleCI](https://circleci.com/gh/feedyard/feedyard-kube-bench.svg?style=shield)](https://circleci.com/gh/feedyard/feedyard-kube-bench) [![Docker Repository on Quay](https://quay.io/repository/feedyard/feedyard-kube-bench/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/feedyard-kube-bench) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/feedyard/feedyard-kube-bench/master/LICENSE) [![Base Image](https://img.shields.io/badge/FROM-alpine-blue.svg)](https://alpinelinux.org)
Example use of aquasec/kube-bench with customer policy decisions in tests

Use as starting point for recurring kube-bench CIS conformance testing, adding custom policy checks to match
enterprise configuration decisions.

Customize `cfg/1.13/master.yaml` and `cfg/1.13/node.yaml` to match enterprise policy. The examples shown are for local
development kubernetes and would not be appropriate for pipeline environment clusters.

### Explore

Passing the checks yaml files to a standard image instead of building image with pre-configured checks.
