action :write do
  log :name
  log :log_string
  log new_resource.name
  log new_resource.log_string
end
