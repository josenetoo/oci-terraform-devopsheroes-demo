resource "oci_container_instances_container_instance" "nginx" {
  availability_domain      = data.oci_identity_availability_domains.ADs.availability_domains[0].name
  compartment_id           = var.compartment_ocid
  container_restart_policy = "ALWAYS"
  containers {
    display_name = "container-nginx"
    image_url                      = "docker.io/nginx"
    is_resource_principal_disabled = "false"
    security_context {
      is_non_root_user_check_enabled = "false"
      is_root_file_system_readonly   = "false"
      security_context_type = "LINUX"
    }
  }
  display_name = "nginx"

  shape                                = "CI.Standard.E4.Flex"
  shape_config {
    memory_in_gbs = "8"
    ocpus         = "1"
  }
  vnics {
    is_public_ip_assigned = "true"
    subnet_id              = var.subnet_ocid
  }
}