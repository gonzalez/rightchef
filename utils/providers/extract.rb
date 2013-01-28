action :unzip do
  log "unzipping #{:file}"
  bash "unzipping #{:file}" do
  code <<-EOF
    unzip #{:file}
  EOF
  end
end

action :untar do
  log "untar #{file}"
  tar -xvf #{file}
end

action :untgz do
  log "untgz #{file}"
  tar -zxvf #{file}
end

