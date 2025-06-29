
output "service_url" {
  description = "URL of the deployed Cloud Run service"
  value       = google_cloud_run_service.app.status[0].url
}

output "artifact_registry_url" {
  description = "URL of the Artifact Registry repository"
  value       = "${var.region}-docker.pkg.dev/${var.project_id}/${var.repository_name}"
}

output "service_name" {
  description = "Name of the Cloud Run service"
  value       = google_cloud_run_service.app.name
}
