{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:Get*",
        "s3:List*",
        "s3:PutObject*",
        "s3:DeleteObject",
        "s3:DeleteObjectVersion",
        "s3:AbortMultipartUpload",
        "s3:ListBucketMultipartUploads"
      ],
      "Resource": [
        "arn:aws:s3:::emdeon-dev-{ secrets.AWS_DEFAULT_REGION }",
        "arn:aws:s3:::emdeon-dev-{ secrets.AWS_DEFAULT_REGION }/*",
        "arn:aws:s3:::emdeon-prod-{ secrets.AWS_DEFAULT_REGION }",
        "arn:aws:s3:::emdeon-prod-{ secrets.AWS_DEFAULT_REGION }/*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "cloudwatch:DisableAlarmActions",
        "cloudwatch:EnableAlarmActions",
        "cloudwatch:PutMetricAlarm",
        "cloudwatch:PutMetricData",
        "cloudwatch:SetAlarmState"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "autoscaling:*",
        "sns:List*",
        "ec2:MonitorInstances"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream"
      ],
      "Resource": [
        "arn:aws:logs:{ secrets.AWS_DEFAULT_REGION }:{ secrets.AWS_ACCOUNT_ID }:log-group:*:*:*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:{ secrets.AWS_DEFAULT_REGION }:{ secrets.AWS_ACCOUNT_ID }:*:*:*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "cloudwatch:*",
        "automation:CreateAction",
        "automation:DescribeAction",
        "automation:UpdateAction"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:Describe*",
        "logs:CreateExportTask",
        "logs:CancelExportTask",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:FilterLogEvents",
        "logs:GetLogEvents",
        "logs:PutRetentionPolicy",
        "logs:PutDestination",
        "logs:PutMetricFilter",
        "logs:PutLogEvents",
        "logs:TestMetricFilter",
        "logs:DeleteLogGroup",
        "logs:DeleteLogStream",
        "logs:DeleteMetricFilter",
        "logs:DeleteRetentionPolicy",
        "logs:DeleteSubscriptionFilter",
        "logs:AssociateKmsKey",
        "logs:DeleteDestination",
        "logs:DeleteResourcePolicy",
        "logs:DisassociateKmsKey",
        "logs:PutDestinationPolicy",
        "logs:PutResourcePolicy",
        "logs:PutSubscriptionFilter",
        "logs:TagLogGroup",
        "logs:UntagLogGroup"
      ],
      "Resource": [
        "arn:aws:logs:{ secrets.AWS_DEFAULT_REGION }:{ secrets.AWS_ACCOUNT_ID }:log-group:*",
        "arn:aws:logs:{ secrets.AWS_DEFAULT_REGION }:{ secrets.AWS_ACCOUNT_ID }:log-group:/aws*",
        "arn:aws:logs:{ secrets.AWS_DEFAULT_REGION }:{ secrets.AWS_ACCOUNT_ID }:destination:*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "events:TestEventPattern",
        "events:DeleteRule",
        "events:DescribeRule",
        "events:DisableRule",
        "events:EnableRule",
        "events:List*",
        "events:PutEvents",
        "events:PutRule",
        "events:TagResource",
        "events:PutTargets",
        "events:RemoveTargets",
        "events:PutPermission"
      ],
      "Resource": "*"
    },
    {
      "Sid": "SNSPublishMonitoring",
      "Effect": "Allow",
      "Action": [
        "sns:Publish"
      ],
      "Resource": [
        "arn:aws:sns:{ secrets.AWS_DEFAULT_REGION }:{ secrets.AWS_ACCOUNT_ID }:Monitoring*"
      ]
    }
  ]
}
