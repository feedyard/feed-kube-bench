from invoke import task
import re

@task
def buildlocal(ctx):
    ctx.run("docker build -t local/feedyard-kube-bench:latest .")

@task
def testlocal(ctx):
    ctx.run("bash testlocal.sh")

@task
def tagpush(ctx, tag):
    """tag and push local build"""
    ctx.run("docker tag local/feedyard-kube-bench:latest quay.io/feedyard/feedyard-kube-bench:{}".format(tag))
    ctx.run("docker push quay.io/feedyard/feedyard-kube-bench:{}".format(tag))
