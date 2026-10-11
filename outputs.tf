output "msk_topics_arn" {
  description = "Map of arn values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "msk_topics_cluster_arn" {
  description = "Map of cluster_arn values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.cluster_arn if v.cluster_arn != null && length(v.cluster_arn) > 0 }
}
output "msk_topics_configs" {
  description = "Map of configs values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.configs if v.configs != null && length(v.configs) > 0 }
}
output "msk_topics_configs_actual" {
  description = "Map of configs_actual values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.configs_actual if v.configs_actual != null && length(v.configs_actual) > 0 }
}
output "msk_topics_name" {
  description = "Map of name values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "msk_topics_partition_count" {
  description = "Map of partition_count values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.partition_count if v.partition_count != null }
}
output "msk_topics_region" {
  description = "Map of region values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.region if v.region != null && length(v.region) > 0 }
}
output "msk_topics_replication_factor" {
  description = "Map of replication_factor values across all msk_topics, keyed the same as var.msk_topics"
  value       = { for k, v in aws_msk_topic.msk_topics : k => v.replication_factor if v.replication_factor != null }
}

