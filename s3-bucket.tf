module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "1.15.0"
  # insert the 5 required variables here

  //bucket = "my-s3-bucket189990"
  bucket_prefix ="my-s3-bucket180053"
  acl    = "private"

  versioning = {
    enabled = true
  }

  tags = {
    Name = "${var.prefix}-hashicat-instance"
    Department = "devops"
    Billable   = "true"
  }
}