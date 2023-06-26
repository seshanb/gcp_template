data "google_compute_instance" "vms" {
  depends_on = [google_compute_instance_group.example]
}

data "google_compute_image" "images" {
  depends_on = [google_compute_instance_group.example]
}

resource "google_compute_instance_group" "example" {
  name        = "example-instance-group"
  description = "Example instance group"
  zone        = "us-central1-a"
}

output "virtual_machines" {
  value = data.google_compute_instance.vms.*.self_link
}

output "virtual_machine_images" {
  value = data.google_compute_image.images.*.self_link
}
