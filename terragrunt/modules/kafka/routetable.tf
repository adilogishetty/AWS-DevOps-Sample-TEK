resource "aws_route_table" "pub_routetable" {
  vpc_id = "${aws_vpc.packer_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.intgw.id}"
  }

  tags {
    Name = "${var.kafka_name}"
  }
}

resource "aws_route_table" "priv_routetable" {
  vpc_id = "${aws_vpc.packer_vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.natgtw.id}"
  }

  tags {
    Name = "${var.kafka_name}"
  }
}

resource "aws_route_table_association" "route_associ" {
  subnet_id      = "${aws_subnet.packpublic_subnet.id}"
  route_table_id = "${aws_route_table.pub_routetable.id}"
}

resource "aws_route_table_association" "route_association" {
  subnet_id      = "${aws_subnet.pacprivate_subnet.id}"
  route_table_id = "${aws_route_table.priv_routetable.id}"
}
