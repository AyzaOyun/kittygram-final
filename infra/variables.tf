variable "cloud_id" {
  description = "Yandex Cloud ID"
  type = string
}

variable "folder_id" {
  description = "Yandex Folder ID"
  type = string
}

variable "zone" {
  description = "Availability Zone"
  type = string
  default = "ru-central1-a"
}

variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "kittygram-network"
}

variable "vm_name" {
  description = "VM Name"
  type = string
  default = "vm-kittygram"
}

variable "ssh_key" {
  description = "SSH Public Key"
  type = string
}

variable "cores" {
  description = "VM Cores"
  type = number
  default = 2
}

variable "memory" {
  description = "VM Memory (GB)"
  type = number
  default = 4
}

variable "disk_size" {
  description = "VM Disk Size (GB)"
  type = number
  default = 30
}

variable "nat" {
  description = "Enable NAT"
  type = bool
  default = true
}

variable "image_family" {
  description = "OS Image Family"
  type = string
  default = "ubuntu-2404-lts"
}

variable "platform_id" {
  description = "Platform ID"
  type = string
  default = "standard-v3"
}

variable "disk_type" {
  description = "Disk Type"
  type = string
  default = "network-ssd"
}
