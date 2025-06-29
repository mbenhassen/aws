# aws
# Projet AWS Infrastructure avec Terraform

Ce projet permet de déployer une infrastructure AWS complète à l'aide de [Terraform](https://www.terraform.io/), en utilisant des modules pour chaque composant (EC2, EBS, EIP, Security Group, Key Pair).

## Structure du projet

- `app/app/main.tf` : Fichier principal qui orchestre les modules.
- `app/app/modules/` : Contient les modules Terraform personnalisés :
  - `ec2` : Création d'une instance EC2 Ubuntu.
  - `ebs` : Création et attachement d'un volume EBS.
  - `eip` : Allocation et association d'une Elastic IP.
  - `sg` : Création d'un Security Group.
  - `keypair` : Génération et gestion d'une clé SSH.

## Prérequis

- [Terraform >= 1.11.0](https://www.terraform.io/downloads)
- Un compte AWS avec les droits nécessaires
- Vos identifiants AWS (`aws_access_key`, `aws_secret_key`)

## Variables principales

Les variables sont définies dans [`app/app/variables.tf`](app/app/variables.tf) :

- `aws_access_key`, `aws_secret_key` : Identifiants AWS
- `instance_type` : Type d'instance EC2 (ex: `t2.medium`)
- `key_name` : Nom de la clé SSH
- `security_group_name`, `security_group_tags` : Nom et tags du Security Group
- `tags` : Tags pour l'instance EC2
- `user` : Utilisateur SSH (ex: `ubuntu`)
- `ebs_zone`, `ebs_size`, `ebs_tag` : Paramètres du volume EBS
- `eip_tags` : Tags pour l'EIP

## Utilisation

1. **Configurer vos variables sensibles**  
   Créez un fichier `terraform.tfvars` dans `app/app/` avec vos valeurs :
   ```hcl
   aws_access_key  = "VOTRE_ACCESS_KEY"
   aws_secret_key  = "VOTRE_SECRET_KEY"
   key_name        = "terraform-projet"