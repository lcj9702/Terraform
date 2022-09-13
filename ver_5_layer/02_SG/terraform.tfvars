region = "ap-northeast-2"

prefix = "test"

name = "tf-msc"

tags = {
    "CreatedByTerraform" = "True"
    "purpose"            = "Test"
    "owner"              = "Megazone"
    "resource"           = "SG"
}

rules = {

  # "bastion" = {
  #   security_group_id        = ""
  #   type                     = "ingress"
  #   from_port                = 22
  #   to_port                  = 22
  #   protocol                 = "tcp"
  #   cidr_blocks              = ["211.60.50.130/32", "0.0.0.0/0"]
  #   source_security_group_id = ""
  #   ipv6_cidr_blocks         = []
  #   prefix_list_ids          = []
  #   self                     = false
  #   description              = "for test SG rules"
  # }


  bastion = {
      name        = "bastion"
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = []
    },
    web = {
      name        = "web"
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = []
    },
    was = {
      name        = "was"
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = []
    },
    rds = {
      name        = "rds"
      type        = "ingress"
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = []
    }
    front = {
      name        = "front"
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = []
    }
    backend = {
      name        = "backend"
      type        = "ingress"
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = []
    }
}