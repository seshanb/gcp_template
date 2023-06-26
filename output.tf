output "virtual_machines" {
  value = data.google_compute_instance.vms.*.self_link
}

output "virtual_machine_images" {
  value = data.google_compute_image.images.*.self_link
}
