resource "aws_cloudwatch_event_rule" "scheduler" {
    name_prefix = "mistaker-scheduler-"
    schedule_expression = "rate(1 minute)"
}

resource "aws_cloudwatch_event_target" "lambda_target" {
  rule      = aws_cloudwatch_event_rule.scheduler.name
  arn       = aws_lambda_function.error_lambda.arn
}