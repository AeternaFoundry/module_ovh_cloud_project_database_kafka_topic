resource "ovh_cloud_project_database_kafka_topic" "cloud_project_database_kafka_topics" {
  for_each = var.cloud_project_database_kafka_topics

  cluster_id          = each.value.cluster_id
  name                = each.value.name
  service_name        = each.value.service_name
  min_insync_replicas = each.value.min_insync_replicas
  partitions          = each.value.partitions
  replication         = each.value.replication
  retention_bytes     = each.value.retention_bytes
  retention_hours     = each.value.retention_hours

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

