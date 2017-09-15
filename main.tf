terraform {
  required_version = "~> 0.10.2"
  backend "consul" {
    path = "terraform/jantman/tf-consul-lock-reproduce"
  }
}

data "external" "example" {
  program = ["/bin/bash", "${path.module}/datasource.sh"]

  query = {
    id = "abc123"
  }
}

resource "local_file" "foo" {
    content  = "${data.external.example.result.foo}"
    filename = "${path.module}/testfile"
}
