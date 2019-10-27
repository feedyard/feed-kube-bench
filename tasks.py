from invoke import task
import re

@task
def buildlocal(ctx):
    ctx.run("docker build -t local/feedyard-kube-bench:latest .")

@task
def testlocal(ctx):
    ctx.run("bash testlocal.sh")
    
