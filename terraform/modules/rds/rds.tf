resource "aws_db_instance" "postgres" {
  identifier = var.identifier

  engine         = "postgres"
  engine_version = var.engine_version

  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage
  storage_type      = "gp3"

  db_name  = var.db_name
  username = var.username
  password = var.password

  port = 5432

  publicly_accessible = var.publicly_accessible

  skip_final_snapshot = var.skip_final_snapshot
  deletion_protection = var.deletion_protection

  tags = {
    Name        = var.identifier
    Environment = "terraform"
    ManagedBy   = "terraform"
  }
}