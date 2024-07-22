variable "metric_namespace" {
    type = string
    default = "CustomErrors"
}

variable "three_error_metric_name" {
    type = string
    default = "MultipleOfThreeErrorCount"
}

variable "sns_topic_name" {
    type = string
    default = "LambdaNumberMultiplesErrors"
}

variable "lambda_name" {
    type = string
    default = "mistaker-test"
}