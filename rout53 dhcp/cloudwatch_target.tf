resource "aws_cloudwatch_event_target" "rule_ec2" {
  rule      = "${aws_cloudwatch_event_rule.rule_ec2.name}"
  arn       = "${aws_lambda_function.lambda.arn}"
  target_id = " #function_id"
}
