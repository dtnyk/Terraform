variable "username" {
  type = list(string)
  default = ["tucker","annie","josh"]
}

variable "aws-region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}