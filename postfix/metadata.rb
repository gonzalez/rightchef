maintainer       "github.com/gonzalez"
license          "All rights reserved"
description      "Postfix Utilities"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"




recipe "weblogic::sys_add_smarthost", "adds smarthost"


attribute "postfix/smarthost",
 :display_name => "Postfix Smarthost",
 :description => "The Hostname or IP without or without port of where mail from this server should be relayed to formats: 1.2.3.4, 1.2.3.4:25, domain.com, domain.com:25",
 :required => true,
 :recipes => [ "postfix::add_postfix_smarthost"]