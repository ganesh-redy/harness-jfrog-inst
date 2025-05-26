provider "google" {
    
    zone = var.zone
    project= "sam-458313"
  
}
resource "google_compute_instance" "inst" {
    name = var.name
    machine_type = "e2-medium"
    boot_disk {
      initialize_params {
        image = var.image
      }
    }
    network_interface {
        network = "default"
      access_config {
        
      }
    }
  
}
