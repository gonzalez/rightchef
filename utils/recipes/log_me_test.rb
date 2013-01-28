utils_log_me "Hello World" do
  action :write
end

utils_log_me "Hello World2" do
  log_string "Hello World 3"
  action :write
end
