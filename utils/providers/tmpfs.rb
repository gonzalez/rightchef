action :create do
	log "creating tmpsfs #{new_resource.tmpfs_mount}"
	script "creating tmpsfs #{new_resource.tmpfs_mount}" do
		interpreter "bash"
		flag "-xe"
  		code <<-EOF
		mkdir -p #{new_resource.tmpfs_mount}
		mount -t tmpfs -o size=#{new_resource.tmpfs_size}M,mode=0744 tmpfs #{new_resource.tmpfs_mount}

		#make tmpfs available on every reboot
		echo "tmpfs #{new_resource.tmpfs_mount} tmpfs size=#{new_resource.tmpfs_size}M,mode=0777 0 0" >> /etc/fstab
		EOF
	end


end
