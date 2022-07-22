  resource "aws_instance" "test" { 
    ami = "ami-098e42ae54c764c35"
    instance_type = "t2.micro"
    count = 2
    tags = {
         key = "Name"
         value = "ondemand"
    }
   
