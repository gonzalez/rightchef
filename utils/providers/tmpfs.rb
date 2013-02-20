action :create do
	log "creating tmpsfs #{new_resource.tmpfs_mount}"
	script "creating tmpsfs #{new_resource.tmpfs_mount}" do
		interpreter "bash"
		flags "-xe"
  		code <<-EOF
		mkdir -p #{new_resource.tmpfs_mount}
		mount -t tmpfs -o size=#{new_resource.tmpfs_size}M,mode=0744 tmpfs #{new_resource.tmpfs_mount}

		#make tmpfs available on every reboot
		echo "tmpfs #{new_resource.tmpfs_mount} tmpfs size=#{new_resource.tmpfs_size}M,mode=0777 0 0" >> /etc/fstab
		EOF
	end


end

action :remove do
	log "removing tmpfs #{new_resource.tmpfs_mount}"
end

action :populate do
	log "populating #{new_resource.tmpfs_mount} with data from"
end