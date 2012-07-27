log "configured smarthost"

SMARTHOST = node[:postfix][:smarthost]

bash "add smarthost" do 
  code <<-EOF
  echo "relayhost=#{SMARTHOST}" >> "/etc/postfix/main.cf"
  service postfix restart
  EOF
end