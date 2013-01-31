actions :create

attribute :tmpfs_mount, [:default => '/tmp/right_tmpfs', :name_attribute => true]
attribute :tmpfs_size,  [:default => '300', :name_attribute => true]