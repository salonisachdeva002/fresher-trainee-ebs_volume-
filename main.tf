resource "aws_ebs_volume" "ebs" {
  availability_zone = var.zone
  size              = var.size

  tags = {
    Name = var.tag_name
  }
}