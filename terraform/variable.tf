variable "region" {
  default = "ap-northeast-1"
}

variable "instance_type" {
  default = "t3.micro"
}

# Reduce from 3 to 1 to avoid vCPU quota errors
variable "instance_count" {
  default = 3
}

variable "ami_id" {
  default = "ami-0df99b3a8349462c6"
}
