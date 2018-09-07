resource "aws_instance" "web" {
  ami             = "ami-759bc50a"
  subnet_id       = "${aws_subnet.private_subnet.id}"
  security_groups = ["${aws_security_group.sgdb.id}"]
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.public-key.key_name}"

  tags {
    Name = "public"
  }
}
