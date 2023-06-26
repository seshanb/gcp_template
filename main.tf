
resource "google_compute_instance" "example" {
  name         = "example-vm"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    ssh-keys = "your-ssh-public-key"
  }
}
