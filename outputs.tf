output "edgecontainer_clusters_id" {
  description = "Map of id values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no id are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "edgecontainer_clusters_authorization" {
  description = "Map of authorization values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no authorization are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => one(v.authorization) if v.authorization != null && length(v.authorization) > 0 }
}
output "edgecontainer_clusters_cluster_ca_certificate" {
  description = "Map of cluster_ca_certificate values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no cluster_ca_certificate are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.cluster_ca_certificate if v.cluster_ca_certificate != null && length(v.cluster_ca_certificate) > 0 }
  sensitive   = true
}
output "edgecontainer_clusters_control_plane" {
  description = "Map of control_plane values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no control_plane are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => one(v.control_plane) if v.control_plane != null && length(v.control_plane) > 0 }
}
output "edgecontainer_clusters_control_plane_encryption" {
  description = "Map of control_plane_encryption values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no control_plane_encryption are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => one(v.control_plane_encryption) if v.control_plane_encryption != null && length(v.control_plane_encryption) > 0 }
}
output "edgecontainer_clusters_control_plane_version" {
  description = "Map of control_plane_version values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no control_plane_version are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.control_plane_version if v.control_plane_version != null && length(v.control_plane_version) > 0 }
}
output "edgecontainer_clusters_create_time" {
  description = "Map of create_time values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no create_time are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "edgecontainer_clusters_default_max_pods_per_node" {
  description = "Map of default_max_pods_per_node values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no default_max_pods_per_node are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.default_max_pods_per_node if v.default_max_pods_per_node != null }
}
output "edgecontainer_clusters_deletion_policy" {
  description = "Map of deletion_policy values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no deletion_policy are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "edgecontainer_clusters_effective_labels" {
  description = "Map of effective_labels values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no effective_labels are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "edgecontainer_clusters_endpoint" {
  description = "Map of endpoint values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no endpoint are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "edgecontainer_clusters_external_load_balancer_ipv4_address_pools" {
  description = "Map of external_load_balancer_ipv4_address_pools values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no external_load_balancer_ipv4_address_pools are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.external_load_balancer_ipv4_address_pools if v.external_load_balancer_ipv4_address_pools != null && length(v.external_load_balancer_ipv4_address_pools) > 0 }
}
output "edgecontainer_clusters_fleet" {
  description = "Map of fleet values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no fleet are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => one(v.fleet) if v.fleet != null && length(v.fleet) > 0 }
}
output "edgecontainer_clusters_labels" {
  description = "Map of labels values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no labels are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "edgecontainer_clusters_location" {
  description = "Map of location values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no location are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "edgecontainer_clusters_maintenance_events" {
  description = "Map of maintenance_events values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no maintenance_events are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.maintenance_events if v.maintenance_events != null && length(v.maintenance_events) > 0 }
}
output "edgecontainer_clusters_maintenance_policy" {
  description = "Map of maintenance_policy values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no maintenance_policy are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => one(v.maintenance_policy) if v.maintenance_policy != null && length(v.maintenance_policy) > 0 }
}
output "edgecontainer_clusters_name" {
  description = "Map of name values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no name are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "edgecontainer_clusters_networking" {
  description = "Map of networking values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no networking are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => one(v.networking) if v.networking != null && length(v.networking) > 0 }
}
output "edgecontainer_clusters_node_version" {
  description = "Map of node_version values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no node_version are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.node_version if v.node_version != null && length(v.node_version) > 0 }
}
output "edgecontainer_clusters_port" {
  description = "Map of port values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no port are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.port if v.port != null }
}
output "edgecontainer_clusters_project" {
  description = "Map of project values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no project are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.project if v.project != null && length(v.project) > 0 }
}
output "edgecontainer_clusters_release_channel" {
  description = "Map of release_channel values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no release_channel are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.release_channel if v.release_channel != null && length(v.release_channel) > 0 }
}
output "edgecontainer_clusters_status" {
  description = "Map of status values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no status are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.status if v.status != null && length(v.status) > 0 }
}
output "edgecontainer_clusters_system_addons_config" {
  description = "Map of system_addons_config values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no system_addons_config are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => one(v.system_addons_config) if v.system_addons_config != null && length(v.system_addons_config) > 0 }
}
output "edgecontainer_clusters_target_version" {
  description = "Map of target_version values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no target_version are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.target_version if v.target_version != null && length(v.target_version) > 0 }
}
output "edgecontainer_clusters_terraform_labels" {
  description = "Map of terraform_labels values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no terraform_labels are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "edgecontainer_clusters_update_time" {
  description = "Map of update_time values across all edgecontainer_clusters, keyed the same as var.edgecontainer_clusters except keys with no update_time are omitted"
  value       = { for k, v in google_edgecontainer_cluster.edgecontainer_clusters : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

