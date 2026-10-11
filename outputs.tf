output "workitemtrackingprocess_lists_id" {
  description = "Map of id values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_lists_is_suggested" {
  description = "Map of is_suggested values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists except keys with no is_suggested are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.is_suggested if v.is_suggested != null }
}
output "workitemtrackingprocess_lists_items" {
  description = "Map of items values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists except keys with no items are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.items if v.items != null && length(v.items) > 0 }
}
output "workitemtrackingprocess_lists_name" {
  description = "Map of name values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists except keys with no name are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workitemtrackingprocess_lists_type" {
  description = "Map of type values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists except keys with no type are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.type if v.type != null && length(v.type) > 0 }
}
output "workitemtrackingprocess_lists_url" {
  description = "Map of url values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists except keys with no url are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.url if v.url != null && length(v.url) > 0 }
}

