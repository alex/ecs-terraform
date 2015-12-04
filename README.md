# ECS + Terraform

This repo contains a set of [Terraform](https://terraform.io/) modules for
provisioning an [AWS ECS](https://aws.amazon.com/ecs/) cluster and registering
services with it.

If you want to use this, basically replace `services.tf` with services which
describe containers you actually want to run.

There's still a handful of `TODO` comments, and it may not be 100% idiomatic
Terraform or AWS.
