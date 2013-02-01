utils_tmpfs "create tmpfs" do
  tmpfs_mount node[:utils][:tmpfs][:mount]
  tmpfs_size node[:utils][:tmpfs][:size]
  action :create
end
