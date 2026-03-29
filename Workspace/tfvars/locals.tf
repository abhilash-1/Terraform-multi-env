locals {
  ami_id = data.aws_ami.Roboshop.id
}

locals{
    zone_id = data.aws_route53_zone.Roboshop_r53.zone_id
}

locals{
    Private_IP = zipmap(var.instances, aws_instance.Roboshop[*].private_ip)
}

locals{
    sg_id= aws_security_group.roboshop_sg[*].id
    environment = terraform.workspace
}