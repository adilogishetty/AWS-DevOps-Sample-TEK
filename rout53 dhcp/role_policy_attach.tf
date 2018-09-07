resource "aws_iam_policy_attachment" "role-policy-attach" {
  name       = "policy attachment"
  roles      = ["${aws_iam_role.dns_role.name}"]
  policy_arn = "${aws_iam_policy.policy.arn}"
}
