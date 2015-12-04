# ECS + Terraform

This repo contains a set of [Terraform](https://terraform.io/) modules for
provisioning an [AWS ECS](https://aws.amazon.com/ecs/) cluster and registering
services with it.

If you want to use this, basically replace `services.tf` with services which
describe containers you actually want to run.

There's still a handful of `TODO` comments, and it may not be 100% idiomatic
Terraform or AWS.

Right now this provisions _everything_, including its own VPC and related
networking accoutrements. It does not handle setting up a Docker Registry. It
does not do anything about attaching other AWS services (e.g. RDS) to a
container.

## Deploying

In addition to the Terraform modules, there is a script for doing deployments to
ECS.

To execute a deployment:

```console
$ # Push a container to your docker registry
$ python deploy/ecs-deploy.py deploy --cluster=<cluster> --service=<service> --image=<image>
```

It will then update the image being used by that service's task. ECS will handle
updating the running containers. (Be aware that you must have as many EC2
instances in the cluster as 2x the number of running tasks for your service.)
