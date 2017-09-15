# tf-consul-lock-reproduce

code to reproduce the terraform ``consul lock was lost`` error ([issue 16098](https://github.com/hashicorp/terraform/issues/16098))

## Usage

1. This expects that you have a Consul cluster running in AWS, behind an ELB, with its address (host:port) exported as ``CONSUL_ADDR``.
2. It expects that you have anonymous write access enabled to ``terraform/jantman/tf-consul-lock-reproduce/*``
3. ``./run.sh``

## Explanation

My observation has been that this error usually happens when terraform apply runs take a long time,
such as when destroying and recreating an EC2 instance takes multiple minutes.
