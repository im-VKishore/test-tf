# Output IAM Role Name
output "iam_role_name" {
  description = "The name of the IAM role created"
  value       = aws_iam_role.this.name
}

# Output IAM Role ARN
output "iam_role_arn" {
  description = "The ARN of the IAM role created"
  value       = aws_iam_role.this.arn
}

# Output Inline Policy Names
output "instance_policy_name" {
  description = "The name of the inline policy attached (instance_policy.json)"
  value       = aws_iam_role_policy.instance_policy.name
}

output "instancecombined_policy_name" {
  description = "The name of the inline policy attached (instancecombined_policy.json)"
  value       = aws_iam_role_policy.instancecombined_policy.name
}
