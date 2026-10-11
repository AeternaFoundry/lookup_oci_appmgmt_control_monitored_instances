output "appmgmt_control_monitored_instances_lookup_id" {
  description = "Map of id values across all appmgmt_control_monitored_instances_lookup, keyed the same as var.appmgmt_control_monitored_instances_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_appmgmt_control_monitored_instances.appmgmt_control_monitored_instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appmgmt_control_monitored_instances_lookup_compartment_id" {
  description = "Map of compartment_id values across all appmgmt_control_monitored_instances_lookup, keyed the same as var.appmgmt_control_monitored_instances_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_appmgmt_control_monitored_instances.appmgmt_control_monitored_instances_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "appmgmt_control_monitored_instances_lookup_display_name" {
  description = "Map of display_name values across all appmgmt_control_monitored_instances_lookup, keyed the same as var.appmgmt_control_monitored_instances_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_appmgmt_control_monitored_instances.appmgmt_control_monitored_instances_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "appmgmt_control_monitored_instances_lookup_filter" {
  description = "Map of filter values across all appmgmt_control_monitored_instances_lookup, keyed the same as var.appmgmt_control_monitored_instances_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_appmgmt_control_monitored_instances.appmgmt_control_monitored_instances_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "appmgmt_control_monitored_instances_lookup_monitored_instance_collection" {
  description = "Map of monitored_instance_collection values across all appmgmt_control_monitored_instances_lookup, keyed the same as var.appmgmt_control_monitored_instances_lookup except keys with no monitored_instance_collection are omitted"
  value       = { for k, v in data.oci_appmgmt_control_monitored_instances.appmgmt_control_monitored_instances_lookup : k => v.monitored_instance_collection if v.monitored_instance_collection != null && length(v.monitored_instance_collection) > 0 }
}

