region = "us-west-1"
role_name = "dev-admin-role"
environment = "dev"
assume_role_policy = <<EOF
{
  "Version": "2025-04-27",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
