action :unzip do
  log "unzipping #{file}"
  unzip #{file}
end

action :untar do
  log "untar #{file}"
  tar -xvf #{file}
end

action :untgz do
  log "untgz #{file}"
  tar -zxvf #{file}
end

