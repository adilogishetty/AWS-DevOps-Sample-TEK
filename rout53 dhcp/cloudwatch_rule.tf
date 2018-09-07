resource "aws_cloudwatch_event_rule" "rule_ec2" {
  name        = "instance_status_change"
  description = "instance status change notification"

  event_pattern = <<PATTERN
{
  "source": [ "aws.ec2" ],
  "detail-type": [ "EC2 Instance State-change Notification" ],
  "detail": {
    "state": [ "running",
    "shutting_down",
    "stopped"
    ]
  }
}
PATTERN
}
