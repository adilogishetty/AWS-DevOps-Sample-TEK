resource "aws_subnet" "packpublic_subnet" {
  vpc_id                  = "${aws_vpc.packer_vpc.id}"
  cidr_block              = "${var.subnet_cidr}"
  map_public_ip_on_launch = true

  tags {
    Name = "pacpublic_subnet"
  }
}

resource "aws_subnet" "pacprivate_subnet" {
  vpc_id     = "${aws_vpc.packer_vpc.id}"
  cidr_block = "${var.subnet2_cidr}"

  tags {
    Name = "pacprivate_subnet"
  }
}
