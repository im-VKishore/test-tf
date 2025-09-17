variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "account_id" {
  description = "AWS account number"
  type        = string
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "instance_policy_name" {
  description = "Name of the IAM inline policy"
  type        = string
}

variable "assume_role_policy" {
  description = "JSON policy for assume role trust relationship"
  type        = string
}

variable "inline_policy_json" {
  description = "JSON for inline IAM policy"
  type        = string
}

variable "combined_policy_name" {
  description = "Name of the instance combined IAM policy"
  type        = string
}