provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAEXMPLEKEY"
  secret_key = "SECRETKEY"
  # Don't hardcode the access credentials. 
  # either use aws configure to setup credentials or fetch from env variables. Refer readme
}
resource "aws_iam_user" "admin-user" {
  name = "kartik"
  tags = {
    Description = "Technical Team lead"
  }
}

resource "aws_iam_policy" "adminUser" {
  name   = "AdminUsers"
  policy = <<EOF
        {
            "Version": "2012-10-17"
            "Statement": [
                {
                    "Effect": "Allow",
                    "Action": "*",
                    "Resource": "*"
                }
            ]
        }
    EOF
}

resource "aws_iam_user_policy_attachment" "kartik-admin-access" {
  user       = aws_iam_user.admin-user.name
  policy_arn = aws_iam_policy.adminUser.arn
}