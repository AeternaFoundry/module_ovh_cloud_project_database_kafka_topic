output "cloud_project_database_kafka_topics_id" {
  description = "Map of id values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no id are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_project_database_kafka_topics_cluster_id" {
  description = "Map of cluster_id values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no cluster_id are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "cloud_project_database_kafka_topics_min_insync_replicas" {
  description = "Map of min_insync_replicas values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no min_insync_replicas are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.min_insync_replicas if v.min_insync_replicas != null }
}
output "cloud_project_database_kafka_topics_name" {
  description = "Map of name values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no name are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_project_database_kafka_topics_partitions" {
  description = "Map of partitions values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no partitions are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.partitions if v.partitions != null }
}
output "cloud_project_database_kafka_topics_replication" {
  description = "Map of replication values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no replication are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.replication if v.replication != null }
}
output "cloud_project_database_kafka_topics_retention_bytes" {
  description = "Map of retention_bytes values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no retention_bytes are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.retention_bytes if v.retention_bytes != null }
}
output "cloud_project_database_kafka_topics_retention_hours" {
  description = "Map of retention_hours values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no retention_hours are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.retention_hours if v.retention_hours != null }
}
output "cloud_project_database_kafka_topics_service_name" {
  description = "Map of service_name values across all cloud_project_database_kafka_topics, keyed the same as var.cloud_project_database_kafka_topics except keys with no service_name are omitted"
  value       = { for k, v in ovh_cloud_project_database_kafka_topic.cloud_project_database_kafka_topics : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

