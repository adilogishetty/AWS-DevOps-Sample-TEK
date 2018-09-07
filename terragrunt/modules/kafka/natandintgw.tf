resource "aws_internet_gateway" "intgw" {
  vpc_id = "${aws_vpc.packer_vpc.id}"

  tags {
    Name = "${var.kafka_name}"
  }
}

resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "natgtw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.packpublic_subnet.id}"
}
