resource "aws_eip" "eip" {
  #domain   = "vpc"
  provisioner "local-exec" { 
    command = "echo EIP created with ID: ${aws_eip.eip.public_ip} > eip_ec2.txt"
    }

  tags = var.eip_tags
}