provider "aws"{
    region = "us-east-1"
    profile = "default"
}

resource "aws_instance" "instance_name" {
    instance_type = "t2.micro"
    ami="ami-03e0b06f01d45a4eb"
    availability_zone = "us-east-1a"
    tags = {
      "name" = "testebsvolume"
    }
}

resource "aws_ebs_volume" "ebs"{
 availability_zone = "us-east-1a"
 size=1
 type="gp2" #The type of EBS volume.
 #id="vol-04370af7066656f8d"
 #arn="arn:aws:ec2:us-east-1:676634049556" #Amazon Resource Name
 tags={
     name="hello"
 }
}

resource "aws_volume_attachment" "ebs_attc"{
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.ebs.id
    instance_id = aws_instance.instance_name.id
    skip_destroy = true
}

resource "aws_instance" "rhel" {
  ami = "ami-03e0b06f01d45a4eb"
  instance_type = "t2.micro"
}