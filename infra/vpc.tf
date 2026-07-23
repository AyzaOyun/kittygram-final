resource "yandex_vpc_network" "infra_network" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "infra_subnet" {
  name           = "${var.vpc_name}-subnet-a"
  zone           = var.zone
  network_id     = yandex_vpc_network.infra_network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_vpc_security_group" "infra_sg" {
  name        = "${var.vpc_name}-sg"
  description = "Security group for Kittygram"
  network_id  = yandex_vpc_network.infra_network.id

  egress {
    protocol    = "ANY"
    v4_cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outgoing traffic"
  }

  ingress {
    protocol    = "TCP"
    port        = 22
    v4_cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH"
  }

  ingress {
    protocol    = "TCP"
    port        = 80
    v4_cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP"
  }
}
