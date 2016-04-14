variable "aws_access_key" {
    description = "The AWS access key."
}

variable "aws_secret_key" {
    description = "The AWS secret key."
}

variable "region" {
    description = "The AWS region to create resources in."
    default = "us-east-1"
}

# TODO: support multiple availability zones, and default to it.
variable "availability_zone" {
    description = "The availability zone"
    default = "us-east-1a"
}

variable "ecs_cluster_name" {
    description = "The name of the Amazon ECS cluster."
    default = "main"
}

variable "amis" {
    description = "Which AMI to spawn. Defaults to the AWS ECS optimized images."
    # TODO: support other regions.
    default = {
        us-east-1 = "ami-ddc7b6b7"
    }
}


variable "autoscale_min" {
    default = "1"
    description = "Minimum autoscale (number of EC2)"
}

variable "autoscale_max" {
    default = "10"
    description = "Maximum autoscale (number of EC2)"
}

variable "autoscale_desired" {
    default = "4"
    description = "Desired autoscale (number of EC2)"
}


variable "instance_type" {
    default = "t2.micro"
}

variable "ssh_pubkey_file" {
    description = "Path to an SSH public key"
    default = "~/.ssh/id_rsa.pub"
}
