variable "instance_type" {
    description = "Value for Instance type"
    default = "t2.micro"
}

variable "ami_id" {
    description = "Value for ami-id"
}

variable "key_name" {
    description = "Value for Key name"
}

variable "sg-name" {
    description = "Name for Security group"
}

variable "vpc-cidr" {
    description = "Value for cidr"
    default = "10.0.0.0/16"
}

variable "subnet_az" {
    description = "Value for Availabilty zone of subnet"
}

