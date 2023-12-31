locals {
  tags = merge(var.tags, { tf-module-name = "alb" }, { env = var.env })
  sg-name        = var.internal ? "${var.env}-internal-alb-sg" :  "${var.env}-public-alb-sg"
  lb-name        = var.internal ? "${var.env}-private-alb" :  "${var.env}-public-alb"

}