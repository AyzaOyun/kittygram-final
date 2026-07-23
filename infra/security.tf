resource "yandex_vpc_security_group_rule" "allow_http_9000" {
  security_group_binding = yandex_vpc_security_group.infra_sg.id

  direction   = "ingress"
  protocol    = "TCP"
  port        = 9000
  v4_cidr_blocks = ["0.0.0.0/0"]
  description = "Allow HTTP on port 9000"
}
