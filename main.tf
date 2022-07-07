  resource "aws_instance" "test" { 
    ami = "ami-098e42ae54c764c35"
    instance_type = "t2.micro"
    tags = {
         key = "Name"
         value = "${var.server_job}.spot"
    }
      provisioner "local-exec" {
      command = "aws ec2 create-tags --resources $instance_id --tags Key=Name,Value=${var.server_job}-spot-instance --region=us-west-2"
  } 
