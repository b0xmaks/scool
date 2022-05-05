terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.74.0"
    }
  }
}

provider "yandex" {
  token     = "AQAAAAAGNKXEAATuwcIVyOyPpkhwp3iFVD_zW0w"
  cloud_id  = "b1gfltbs1jo2gj8g55rp"
  folder_id = "default"
  zone      = "ru-central-b"
}
resource "yandex_compute_instance" "vm-1" {
  name = "terraform1"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8fte6bebi857ortlja"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
output "internal_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "external_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}