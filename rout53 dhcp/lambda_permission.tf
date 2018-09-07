resource "aws_lambda_permission" "ddns_lambda" {
  statement_id  = "45"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "arn:aws:events:us-east-1:417314492995:rule/instance_status_change"
}
