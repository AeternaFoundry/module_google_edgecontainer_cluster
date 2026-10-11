variable "edgecontainer_clusters" {
  description = <<EOT
Map of edgecontainer_clusters, attributes below
Required:
    - location
    - name
    - authorization (block):
        - admin_users (required, block):
            - username (required)
    - fleet (block):
        - project (required)
    - networking (block):
        - cluster_ipv4_cidr_blocks (required)
        - cluster_ipv6_cidr_blocks (optional)
        - services_ipv4_cidr_blocks (required)
        - services_ipv6_cidr_blocks (optional)
Optional:
    - default_max_pods_per_node
    - deletion_policy
    - external_load_balancer_ipv4_address_pools
    - labels
    - project
    - release_channel
    - target_version
    - control_plane (block):
        - local (optional, block):
            - machine_filter (optional)
            - node_count (optional)
            - node_location (optional)
            - shared_deployment_policy (optional)
        - remote (optional, block):
            - node_location (optional)
    - control_plane_encryption (block):
        - kms_key (optional)
    - maintenance_policy (block):
        - maintenance_exclusions (optional, block):
            - id (optional)
            - window (optional, block):
                - end_time (optional)
                - start_time (optional)
        - window (required, block):
            - recurring_window (required, block):
                - recurrence (optional)
                - window (optional, block):
                    - end_time (optional)
                    - start_time (optional)
    - system_addons_config (block):
        - ingress (optional, block):
            - disabled (optional)
            - ipv4_vip (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                                  = string
    name                                      = string
    default_max_pods_per_node                 = optional(number)
    deletion_policy                           = optional(string)
    external_load_balancer_ipv4_address_pools = optional(list(string))
    labels                                    = optional(map(string))
    project                                   = optional(string)
    release_channel                           = optional(string)
    target_version                            = optional(string)
    authorization = object({
      admin_users = object({
        username = string
      })
    })
    fleet = object({
      project = string
    })
    networking = object({
      cluster_ipv4_cidr_blocks  = list(string)
      cluster_ipv6_cidr_blocks  = optional(list(string))
      services_ipv4_cidr_blocks = list(string)
      services_ipv6_cidr_blocks = optional(list(string))
    })
    control_plane = optional(object({
      local = optional(object({
        machine_filter           = optional(string)
        node_count               = optional(number)
        node_location            = optional(string)
        shared_deployment_policy = optional(string)
      }))
      remote = optional(object({
        node_location = optional(string)
      }))
    }))
    control_plane_encryption = optional(object({
      kms_key = optional(string)
    }))
    maintenance_policy = optional(object({
      maintenance_exclusions = optional(list(object({
        id = optional(string)
        window = optional(object({
          end_time   = optional(string)
          start_time = optional(string)
        }))
      })))
      window = object({
        recurring_window = object({
          recurrence = optional(string)
          window = optional(object({
            end_time   = optional(string)
            start_time = optional(string)
          }))
        })
      })
    }))
    system_addons_config = optional(object({
      ingress = optional(object({
        disabled = optional(bool)
        ipv4_vip = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

