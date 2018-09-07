resource "aws_vpc_dhcp_options_association" "dns_assoc" {
  vpc_id          = "${aws_vpc.vpc.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.dhcp-lamda.id}"
}
