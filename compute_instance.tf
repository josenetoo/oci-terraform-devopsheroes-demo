resource "oci_core_instance" "DevOpsHeroes" {

	availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0].name
	compartment_id = var.compartment_ocid
	create_vnic_details {
		assign_public_ip = "true"
		subnet_id = var.subnet_ocid
	}
	display_name = "DevOpsHeroes"

	shape = "VM.Standard.E4.Flex"
	shape_config {
		memory_in_gbs = "8"
		ocpus = "1"
	}
	source_details {
		source_id = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaapkpcdenpj35fbtfjgtjwcqwaja5rog7uhfhxsvgna76usknmdn6a"
		source_type = "image"
	}
}
