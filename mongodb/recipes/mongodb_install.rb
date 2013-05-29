rightscale_marker :begin

#mongodb tgz (move into repo or host on s3)
src_filepath = "http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.4.3.tgz"
    
#get the tgz
remote_file "/tmp/mongodb-linux-x86_64-2.4.3.tgz" do
	source "http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.4.3.tgz"
end

#untar and place binaries in /usr/local/bin
bash "install mongodb" do
	code <<-EOH
		tar -zxvf /tmp/mongodb-linux-x86_64-2.4.3.tgz -C /tmp
    mv /tmp/mongodb-linux-x86_64-2.4.3/bin/* /usr/bin/
    rm -rf /tmp/mongodb-linux-x86_64-2.4.3*
	EOH
end

  
#create mongodb group
group "mongodb" do

end


#create mongodb user
user "mongodb" do
	comment "MongoDB User"
	gid "mongodb"
	shell "/bin/false"
end


#create db path , default
directory node[:mongodb][:datadir] do
	owner "mongodb"
	group "mongodb"
	mode "07055"
	action :create
	recursive true
end

#mongodb config file
template "mongodb-config" do 
  	path "/etc/mongodb.conf"
  	source "mongodb.conf.erb"
  	mode 0644
end

#mongodb init.d script
template "mongodb-init" do
  path "/etc/init.d/mongodb"
  source "mongod_init.erb"
  mode 0700
end





rightscale_marker :end