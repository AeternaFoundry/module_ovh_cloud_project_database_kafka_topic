variable "cloud_project_database_kafka_topics" {
  description = <<EOT
Map of cloud_project_database_kafka_topics, attributes below
Required:
    - cluster_id
    - name
    - service_name
Optional:
    - min_insync_replicas
    - partitions
    - replication
    - retention_bytes
    - retention_hours
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster_id          = string
    name                = string
    service_name        = string
    min_insync_replicas = optional(number)
    partitions          = optional(number)
    replication         = optional(number)
    retention_bytes     = optional(number)
    retention_hours     = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

