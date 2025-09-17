provider "aws" {
  region = var.region
}

# Get current account ID dynamically
data "aws_caller_identity" "current" {}

# IAM Role
resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
  
}

# Inline IAM Policy attached to Role - instance_policy.json.tpl
resource "aws_iam_role_policy" "instance_policy" {
  name = var.instance_policy_name
  role = aws_iam_role.this.id

  policy = templatefile("${path.module}/policies/instance_policy.tpl", {
    region     = var.region
    account_id = data.aws_caller_identity.current.account_id
  })
}

# Inline IAM Policy attached to Role - instancecombined_policy.json.tpl
resource "aws_iam_role_policy" "instancecombined_policy" {
  name = var.combined_policy_name
  role = aws_iam_role.this.id

  policy = templatefile("${path.module}/policies/instancecombined_policy.tpl", {
    region     = var.region
    account_id = data.aws_caller_identity.current.account_id
  })
}
