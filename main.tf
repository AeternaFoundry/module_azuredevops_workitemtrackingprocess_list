resource "azuredevops_workitemtrackingprocess_list" "workitemtrackingprocess_lists" {
  for_each = var.workitemtrackingprocess_lists

  items        = each.value.items
  name         = each.value.name
  is_suggested = each.value.is_suggested
  type         = each.value.type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

