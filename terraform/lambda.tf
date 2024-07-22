resource "aws_lambda_function" "error_lambda" {
    function_name = "mistaker-test"
    role = aws_iam_role.lambda_role.arn
    handler = "mistaker.lambda_handler"
    runtime = "python3.12"
    filename = "function.zip"
}

resource "aws_lambda_permission" "allow_scheduler" {
  action = "lambda:InvokeFunction"
  function_name = aws_lambda_function.error_lambda.function_name
  principal = "events.amazonaws.com"
  source_arn = aws_cloudwatch_event_rule.scheduler.arn
  source_account = data.aws_caller_identity.current.account_id
}


data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/../src/mistaker.py"
  output_path = "${path.module}/function.zip"
}
