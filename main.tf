provider "aws" {
  region = var.region
}

# Get AWS Account ID dynamically
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

# IAM Role
resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
}

# Inline IAM Policy attached to Role - instance_policy.json
resource "aws_iam_role_policy" "instance_policy" {
  name   = var.instance_policy_name
  role   = aws_iam_role.this.id
  policy = file("${path.module}/policies/instance_policy.tpl",{
    account_id = data.aws_caller_identity.current.account_id
    region     = var.region
  })
}
# Inline IAM Policy attached to Role - instance_policy.json
#resource "aws_iam_role_policy" "instance_policy" {
 # name   = var.instance_policy_name
 # role   = aws_iam_role.this.id
 # policy = file("${path.module}/policies/instance_policy.tpl")
#}

# Inline IAM Policy attached to Role - instancecombined_policy.json
#resource "aws_iam_role_policy" "instancecombined_policy" {
  #name   = var.combined_policy_name
  #role   = aws_iam_role.this.id
 # policy = file("${path.module}/policies/instancecombined_policy.json")
#}

# Inline IAM Policy attached to Role - instancecombined_policy.json
resource "aws_iam_role_policy" "instancecombined_policy" {
  name   = var.combined_policy_name
  role   = aws_iam_role.this.id
  policy = file("${path.module}/policies/instancecombined_policy.json",{
    account_id = data.aws_caller_identity.current.account_id
    region     = var.region
  })
}
