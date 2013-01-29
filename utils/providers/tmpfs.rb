action :create do
	log "creating tmpsfs #{:tmpfs_mount}"
	bash "creating tmpsfs #{:tmpfs_mount}" do
  		code <<-EOF
		mkdir -p #{:tmpfs_mount}"
		mount -t tmpfs -o size=#{:tmpfs_size}M,mode=0744 tmpfs #{:tmpfs_mount}"

		#make tmpfs available on every reboot
		echo "tmpfs #{:tmpfs_mount} tmpfs size=#{:tmpfs_size}M,mode=0777 0 0" >> /etc/fstab
		EOF
	end


end
