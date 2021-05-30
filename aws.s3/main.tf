resource "aws_s3_bucket" "finance" {
  bucket = "finance-20192020"
  acl    = "private"

  tags = {
    Description = "Finance and payroll"
  }
}

resource "aws_s3_bucket_object" "finance-2020" {
  content = "/Users/kartik/Desktop/projects/terraform/aws.s3/finance.doc"
  key     = "finance.doc"
  bucket  = aws_s3_bucket.finance.id
}

data "aws_iam_group" "finance-data" {
    group_name = "finance-analysts"
}

resource "aws_s3_bucket_policy" "finance-policy" {
    bucket = aws_s3_bucket.finance.id
    policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Action": "*",
                "Effect": "Allow",
                "Resource": "arn:aws:s3:::${aws_s3_bucket.finance.id}/*",
                "Principal": {
                    "AWS": [
                        "${data.aws_iam_group.finance-data.arn}"
                    ]
                }
            }
        ]
    }
    EOF
}