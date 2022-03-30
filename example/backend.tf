terraform {
  backend "s3" {
    bucket = "test-bucket23" 
    key    = "ec2.tfstate" 
    region = "us-east-1"
    dynamodb_table = "Test-table"  
  }
}