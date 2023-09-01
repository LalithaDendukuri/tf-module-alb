locals {
  tags = merge(var.tags, { tf-module-name = "alb" }, { env = var.env })
  sg-name        = var.internal ? "${var.env}-internal-alb-sg" : n "${var.env}-public-alb-sg"
}