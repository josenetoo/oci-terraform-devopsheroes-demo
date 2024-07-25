resource "oci_objectstorage_bucket" "devopsheroes_bucket" {
    compartment_id = var.compartment_ocid
    name = var.bucket_name
    namespace = var.bucket_namespace
    access_type = var.bucket_access_type
}

resource "oci_objectstorage_bucket" "devopsheroes_bucket_2" {
    compartment_id = var.compartment_ocid
    name = "DevOpsExperience_Dev"
    namespace = var.bucket_namespace
    access_type = var.bucket_access_type
}