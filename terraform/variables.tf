variable "target" {
  description = "Infrastructure target: local or aws"
  type        = string

  validation {
    condition     = contains(["local", "aws"], var.target)
    error_message = "target must be either 'local' or 'aws'."
  }
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "localstack_endpoint" {
  description = "Local AWS emulator endpoint"
  type        = string
  default     = "http://localhost:4566"
}

variable "db_identifier" {
  description = "RDS instance identifier"
  type        = string
}

variable "db_name" {
  description = "PostgreSQL database name"
  type        = string
}

variable "db_username" {
  description = "PostgreSQL username"
  type        = string
}

variable "db_password" {
  description = "PostgreSQL password"
  type        = string
  sensitive   = true
}

variable "db_engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "17"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "db_allocated_storage" {
  description = "RDS storage in GB"
  type        = number
}

variable "db_publicly_accessible" {
  description = "Whether the database should be publicly accessible"
  type        = bool
}

variable "db_skip_final_snapshot" {
  description = "Skip final snapshot when destroying the database"
  type        = bool
}

variable "db_deletion_protection" {
  description = "Protect the database from deletion"
  type        = bool
}