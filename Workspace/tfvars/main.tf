resource "aws_instance" "Roboshop" {
  ami                    = local.ami_id
  count                  = length(var.instances)
  instance_type          = "t3.micro"
  vpc_security_group_ids = [local.sg_id[count.index]]

  tags = merge(var.common_tags, {
    Name = "${var.instances[count.index]}-${var.environment}"
  })

  provisioner "remote-exec" {
    inline = var.instances[count.index] == "frontend" ? [
      "sleep 30",
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"
    ] : [
      "sleep 30",
      "sudo yum install -y python3"
    ]

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }
  }
}