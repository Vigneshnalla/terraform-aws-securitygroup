variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "common_tags" {
  type = map(any)
}

variable "sg_tags" {
  type    = map(any)
  default = {}
}

variable "outbound_rules" {
  type = list(any)
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1" # all protocols
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "ingress_rules" {
  type    = list(any)
  default = []
}