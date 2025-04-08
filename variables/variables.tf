variable "ami_id" {
  type        = string
  default = "ami-09c813fb71547fc4f"
  description = "The id of the machine image (AMI) to use for the server."
}

variable "instance_type" {
  type        = string
   default     = "t3.micro"
 }

variable "ec2_tags" {
  type        = map
    default     = {
        Project = "expense"
        Component = "backend"
        Environment = "dev"
        Name = "expense-backend"
    }
}

variable "from_port" {
  type        = number
  default     = 22
}

variable "to_port" {
  type        = number
  default     = 22
}

variable "cidr_blocks"{
    type     = list
    default  = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type        = map
  default     = {
      Name = "allow_tls"
  }
}