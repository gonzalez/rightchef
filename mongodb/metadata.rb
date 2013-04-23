maintainer       "github.com/gonzalez"
license          "All rights reserved"
description      "Postfix Utilities"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"



depends "rightscale"
recipe "mongodb::mongodb_install", "Installs MongoDB binaries"

