module "mysql_sg" {
    source = "../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.mysql_sg_tags
}

module "backend_sg" {
    source = "../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    sg_name = "backend"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.backend_sg_tags
}

module "frontend_sg" {
    source = "../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    sg_name = "frontend"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.frontend_sg_tags
}

module "bastion_sg" {
    source = "../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    sg_name = "bastion"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.bastion_sg_tags
}

module "ansible_sg" {
    source = "../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    sg_name = "ansible"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.ansible_sg_tags
}
