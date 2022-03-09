# This file will contain my infrastructure

# This creates the bucket
resource "aws_s3_bucket" "my_state_bucket" {
  bucket = "pdev-danny-tfstates"

  tags = {
    Name        = "pdev-danny-tfstates" #this tag is the exact name of the bucket
    Environment = "Test"
  }
}

#in this case the ID for the instance below will be aws_instance.app_server
resource "aws_instance" "app_server" {
  ami = "ami-0db188056a6ff81ae"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
