output "vm_ip" {
  value = yandex_compute_instance.vm_1.network_interface.0.nat_ip_address
  description = "Public IP address of the VM"
}

output "vm_name" {
  value = yandex_compute_instance.vm_1.name
  description = "Name of the VM"
}
