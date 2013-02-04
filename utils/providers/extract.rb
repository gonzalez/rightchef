action :unzip do
  if new_resource.file.nil?
    file_name=new_resource.name
  else 
    file_name=new_resource.file
  end

  log "unzipping #{file_name}"
  bash "unzipping #{file_name}" do
  code <<-EOF
    unzip #{file_name}
  EOF
  end
end

action :untar do
  log "untar #{file_name}"
  tar -xvf #{file}
end

action :untgz do
  log "untgz #{file_name}"
  tar -zxvf #{file}
end

