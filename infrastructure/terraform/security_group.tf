resource "scaleway_instance_security_group" "sg01" {
  external_rules = true
  zone           = "fr-par-2"
}

resource "scaleway_instance_security_group_rules" "sgrs01" {
  security_group_id = scaleway_instance_security_group.sg01.id
  inbound_rule {
    action   = "accept"
    port     = 80
    ip_range = "0.0.0.0/0"
  }

  inbound_rule {
    action   = "accept"
    port     = "443"
    ip_range = "0.0.0.0/0"
  }
}
