utils_tmpfs "create tmpfs" do
  tmpfs_mount node[:utils][:tmpfs][:mount]
  tmpfs_size 300
  action :create
end
