resource "aws_launch_configuration" "as_conf" {
  name            = "${var.kafka_name}"
  image_id        = "${var.ami_id}"
  security_groups = ["${aws_security_group.sgdb.id}"]
  instance_type   = "${var.instype_id}"

  #key_name        = "${aws_key_pair.deployer.key_name}"
}
