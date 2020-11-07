{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:RunInstances",
                "ec2:StopInstances",
                "ec2:StartInstances",
                "ec2:DescribeInstances",
                "ec2:Describe*",
                "ec2:TerminateInstances"
            ],
            "Resource": "arn:aws:ec2:us-east-1:123456789012:instance/i-1234567890abcdef0"
        }
    ]
}