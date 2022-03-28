terraform {
  backend "s3"{
     bucket="backend-demo1"
      key="saloniebs.tfstate"
      region="us-east-1"
  }
 
}

