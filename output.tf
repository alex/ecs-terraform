output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}

output "ecs_culster_id" {
  value = aws_ecs_cluster.main.id
}


