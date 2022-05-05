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