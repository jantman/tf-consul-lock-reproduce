# tf-consul-lock-reproduce

[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](http://www.repostatus.org/badges/latest/concept.svg)](http://www.repostatus.org/#concept)

code to reproduce the terraform ``consul lock was lost`` error ([issue 16098](https://github.com/hashicorp/terraform/issues/16098))

## Usage

1. This expects that you have a Consul cluster running in AWS, behind an ELB, with its address (host:port) exported as ``CONSUL_ADDR``.
2. It expects that you have anonymous write access enabled to ``terraform/jantman/tf-consul-lock-reproduce/*``
3. ``./run.sh``

## Explanation

My observation has been that this error usually happens when terraform apply runs take a long time,
such as when destroying and recreating an EC2 instance takes multiple minutes.
