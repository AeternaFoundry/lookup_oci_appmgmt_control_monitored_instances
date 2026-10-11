data "oci_appmgmt_control_monitored_instances" "appmgmt_control_monitored_instances_lookup" {
  for_each = var.appmgmt_control_monitored_instances_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

