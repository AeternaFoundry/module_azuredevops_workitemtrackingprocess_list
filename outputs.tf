output "workitemtrackingprocess_lists_id" {
  description = "Map of id values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.id }
}
output "workitemtrackingprocess_lists_is_suggested" {
  description = "Map of is_suggested values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.is_suggested }
}
output "workitemtrackingprocess_lists_items" {
  description = "Map of items values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.items }
}
output "workitemtrackingprocess_lists_name" {
  description = "Map of name values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.name }
}
output "workitemtrackingprocess_lists_type" {
  description = "Map of type values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.type }
}
output "workitemtrackingprocess_lists_url" {
  description = "Map of url values across all workitemtrackingprocess_lists, keyed the same as var.workitemtrackingprocess_lists"
  value       = { for k, v in azuredevops_workitemtrackingprocess_list.workitemtrackingprocess_lists : k => v.url }
}

