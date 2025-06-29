
module "keypair" {
  source   = "./modules/keypair"
  key_name = var.key_name
  
}

module "sg" {
  source              = "./modules/sg"
  security_group_name = var.security_group_name
  security_group_tags = var.security_group_tags

}



module "ec2" {
  source              = "./modules/ec2"
  instance_type       = var.instance_type
  key_name            = var.key_name
  tags                = var.tags
  security_group_name = module.sg.security_group_name
  user                = var.user

}

module "eip" {
  source   = "./modules/eip"
  eip_tags = var.eip_tags

}

module "ebs" {
  source   = "./modules/ebs"
  ebs_zone = var.ebs_zone
  ebs_size = var.ebs_size
  ebs_tag  = var.ebs_tag


}

resource "aws_eip_association" "eip_association" {
  instance_id   = module.ec2.ec2_id
  allocation_id = module.eip.eip_id

}

resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdh"
  volume_id   = module.ebs.ebs_id
  instance_id = module.ec2.ec2_id

}