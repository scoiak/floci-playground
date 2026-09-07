output "address" {
  description = "RDS endpoint"
  value       = aws_db_instance.postgres.address
}

output "port" {
  description = "RDS port"
  value       = aws_db_instance.postgres.port
}

output "database_name" {
  description = "Database name"
  value       = aws_db_instance.postgres.db_name
}

output "username" {
  description = "Database username"
  value       = aws_db_instance.postgres.username
}

output "endpoint" {
  description = "Complete database endpoint"
  value       = aws_db_instance.postgres.endpoint
}