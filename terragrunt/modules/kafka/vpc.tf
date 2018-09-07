resource "aws_vpc" "packer_vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
