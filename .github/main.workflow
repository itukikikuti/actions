workflow "Page Someone" {
  on = "issues"
  resolves = ["Check for label"]
}

action "Check for label" {
  uses = "actions/bin/filter@master"
  args = "label urgent"
}
