provider "aws" {
    region = "us-west-2"
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