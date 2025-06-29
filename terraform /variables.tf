variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "image_url" {
  description = "Docker image URL for the Cloud Run service"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "service_name" {
  description = "Name of the Cloud Run service"
  type        = string
  default     = "aerostar-aviation-app"
}

variable "repository_name" {
  description = "Name of the Artifact Registry repository"
  type        = string
  default     = "aerostar-aviation"
}

variable "image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "aerostartaviation"
}

variable "image_tag" {
  description = "Tag of the Docker image"
  type        = string
  default     = "latest"
}

variable "cpu_limit" {
  description = "CPU limit for the container"
  type        = string
  default     = "1000m"
}

variable "memory_limit" {
  description = "Memory limit for the container"
  type        = string
  default     = "512Mi"
}

variable "container_concurrency" {
  description = "Maximum number of requests that can be processed simultaneously"
  type        = number
  default     = 80
}

variable "timeout_seconds" {
  description = "Timeout for each request"
  type        = number
  default     = 300
}

variable "min_instances" {
  description = "Minimum number of instances"
  type        = string
  default     = "0"
}

variable "max_instances" {
  description = "Maximum number of instances"
  type        = string
  default     = "10"
}
