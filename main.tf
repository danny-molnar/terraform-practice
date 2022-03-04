# This file will contain my infrastructure

# This creates the bucket
resource "aws_s3_bucket" "my_state_bucket" {
  bucket = "pdev-danny-tfstates"

  tags = {
    Name        = "pdev-danny-tfstates"
    Environment = "Test"
  }
}

