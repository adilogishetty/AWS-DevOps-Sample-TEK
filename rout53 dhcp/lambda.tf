resource "aws_lambda_function" "lambda" {
  filename         = "union.py.zip"
  function_name    = "lambda"
  role             = "${aws_iam_role.dns_role.arn}"
  handler          = "union.handler"
  timeout          = "30"
  source_code_hash = "${base64sha256(file("union.py.zip"))}"
  runtime          = "python2.7"

  environment {
    variables = {
      foo = "bar"
    }
  }
}
