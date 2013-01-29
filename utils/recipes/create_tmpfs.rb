utils_tmpfs "create tmpfs" do
  tmpfs_mount node[:utils][:tmpfs][:mount]
  action :create
end
