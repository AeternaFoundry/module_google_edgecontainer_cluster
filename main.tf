resource "google_edgecontainer_cluster" "edgecontainer_clusters" {
  for_each = var.edgecontainer_clusters

  location                                  = each.value.location
  name                                      = each.value.name
  default_max_pods_per_node                 = each.value.default_max_pods_per_node
  deletion_policy                           = each.value.deletion_policy
  external_load_balancer_ipv4_address_pools = each.value.external_load_balancer_ipv4_address_pools
  labels                                    = each.value.labels
  project                                   = each.value.project
  release_channel                           = each.value.release_channel
  target_version                            = each.value.target_version

  authorization {
    admin_users {
      username = each.value.authorization.admin_users.username
    }
  }

  fleet {
    project = each.value.fleet.project
  }

  networking {
    cluster_ipv4_cidr_blocks  = each.value.networking.cluster_ipv4_cidr_blocks
    cluster_ipv6_cidr_blocks  = each.value.networking.cluster_ipv6_cidr_blocks
    services_ipv4_cidr_blocks = each.value.networking.services_ipv4_cidr_blocks
    services_ipv6_cidr_blocks = each.value.networking.services_ipv6_cidr_blocks
  }

  dynamic "control_plane" {
    for_each = each.value.control_plane != null ? [each.value.control_plane] : []
    content {
      dynamic "local" {
        for_each = control_plane.value.local != null ? [control_plane.value.local] : []
        content {
          machine_filter           = local.value.machine_filter
          node_count               = local.value.node_count
          node_location            = local.value.node_location
          shared_deployment_policy = local.value.shared_deployment_policy
        }
      }
      dynamic "remote" {
        for_each = control_plane.value.remote != null ? [control_plane.value.remote] : []
        content {
          node_location = remote.value.node_location
        }
      }
    }
  }

  dynamic "control_plane_encryption" {
    for_each = each.value.control_plane_encryption != null ? [each.value.control_plane_encryption] : []
    content {
      kms_key = control_plane_encryption.value.kms_key
    }
  }

  dynamic "maintenance_policy" {
    for_each = each.value.maintenance_policy != null ? [each.value.maintenance_policy] : []
    content {
      dynamic "maintenance_exclusions" {
        for_each = maintenance_policy.value.maintenance_exclusions != null ? maintenance_policy.value.maintenance_exclusions : []
        content {
          id = maintenance_exclusions.value.id
          dynamic "window" {
            for_each = maintenance_exclusions.value.window != null ? [maintenance_exclusions.value.window] : []
            content {
              end_time   = window.value.end_time
              start_time = window.value.start_time
            }
          }
        }
      }
      window {
        recurring_window {
          recurrence = maintenance_policy.value.window.recurring_window.recurrence
          dynamic "window" {
            for_each = maintenance_policy.value.window.recurring_window.window != null ? [maintenance_policy.value.window.recurring_window.window] : []
            content {
              end_time   = window.value.end_time
              start_time = window.value.start_time
            }
          }
        }
      }
    }
  }

  dynamic "system_addons_config" {
    for_each = each.value.system_addons_config != null ? [each.value.system_addons_config] : []
    content {
      dynamic "ingress" {
        for_each = system_addons_config.value.ingress != null ? [system_addons_config.value.ingress] : []
        content {
          disabled = ingress.value.disabled
          ipv4_vip = ingress.value.ipv4_vip
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

