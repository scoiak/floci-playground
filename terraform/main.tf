module "rds" {
  source = "./modules/rds"

  identifier = var.db_identifier

  engine_version = var.db_engine_version

  instance_class    = var.db_instance_class
  allocated_storage = var.db_allocated_storage

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  publicly_accessible = var.db_publicly_accessible

  skip_final_snapshot = var.db_skip_final_snapshot
  deletion_protection = var.db_deletion_protection
}