output "instance_name" {
  value = google_compute_instance.example_instance.name
}

output "instance_ip" {
  value = google_compute_instance.example_instance.network_interface.0.access_config.0.assigned_nat_ip
}
