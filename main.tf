resource "google_compute_firewall" "ssh" {
  name    = "${var.network}-firewall-ssh"
  network = "${var.network}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["${var.network}-firewall-ssh"]
  source_ranges = ["10.0.1.0/24"]
}

resource "google_compute_firewall" "http" {
  name    = "${var.network}-firewall-http"
  network = "${var.network}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["${var.network}-firewall-http"]
  source_ranges = ["10.0.1.0/24"]
}

resource "google_compute_firewall" "https" {
  name    = "${var.network}-firewall-https"
  network = "${var.network}"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags   = ["${var.network}-firewall-https"]
  source_ranges = ["10.0.1.0/24"]
}

resource "google_compute_firewall" "icmp" {
  name    = "${var.network}-firewall-icmp"
  network = "${var.network}"

  allow {
    protocol = "icmp"
  }

  target_tags   = ["${var.network}-firewall-icmp"]
  source_ranges = ["10.0.1.0/24"]
}
