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
		tar -zxvf /tmp/mongodb-linux-x86_64-2.4.3.tgz -C /usr/src/
	EOH
end

  
#create mongo group
group "mongo" do

end


#create mongo user
user "mongo" do
	comment "MongoDB User"
	gid "mongo"
	shell "/bin/false"
end


#create db path , default
directory node['mongodb_datadir'] do
	owner "mongo"
	group "mongo"
	mode "07055"
	action :create
	recursive true
end




  template "mongodb-config" do 
  	path "/etc/mongod.conf"
  	source "mongodb.conf.erb"
  	mode 0644
  end


  rightscale_marker :end