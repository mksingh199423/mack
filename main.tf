provider "google" {
credentials = "${file("verdant-art-307109-e2b1e801b21f.json")}"
  project = "verdant-art-307109"
  region  = "us-central1"
  zone    = "us-central1-a"
}
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  zone = "us-central1-a"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}
aaa