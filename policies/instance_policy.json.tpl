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
        "arn:aws:s3:::emdeon-dev-us-east-1",
        "arn:aws:s3:::emdeon-dev-us-east-1/*",
        "arn:aws:s3:::emdeon-prod-us-east-1",
        "arn:aws:s3:::emdeon-prod-us-east-1/*"
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
        "arn:aws:logs:us-east-1:{account_id}:log-group:*:*:*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:us-east-1:{account_id}:*:*:*"
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
        "arn:aws:logs:us-east-1:{account_id}:log-group:*",
        "arn:aws:logs:us-east-1:{account_id}:log-group:/aws*",
        "arn:aws:logs:us-east-1:{account_id}:destination:*"
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
        "arn:aws:sns:us-east-1:{account_id}:Monitoring*"
      ]
    }
  ]
}
