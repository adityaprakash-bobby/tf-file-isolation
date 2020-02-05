output "db_address" {
    value       = aws_db_instance.default.address
    description = "Connect to RDS instance at this endpoint"
}

output "db_port" {
    value       = aws_db_instance.default.port
    description = "RDS instance is listening on this port"
}