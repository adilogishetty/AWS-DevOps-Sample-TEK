resource "aws_vpc_dhcp_options" "dhcp-lamda" {
  domain_name         = "adi123.com.domain_name"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags {
    Name = "dhcp-aditya"
  }
}
