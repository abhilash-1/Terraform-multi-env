data "aws_ami" "Roboshop" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

#r53 data source
data "aws_route53_zone" "Roboshop_r53"{
    name = "100pushups.online"
    private_zone = false
}

# public IP

# data "aws_instance" "roboshop"{
#     name = "IP"
#     values = 
# }

