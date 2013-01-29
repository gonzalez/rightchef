actions :create

attribute :tmpfs_mount, [:required => true, :name_attribute => true, :default => '/tmp/right_tmpfs']
attribute :tmpfs_size, [:default => '300', :name_attribute => true]