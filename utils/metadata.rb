maintainer       "github.com/gonzalez"
license          "All rights reserved"
description      "System Utilities"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"


recipe "utils::extract_test", "extracts file"
recipe "utils::log_me_test", "writes to log"
recipe "utils::create_tmpfs", "creates a tmpfs using a tmpfd mount and size"



attribute "utils/extract/file", 
  :display_name => "Filename",
  :recipes => [ "utils::extract_test" ]

attribute "utils/tmpfs/mount",
  :display_name => "TmpFS Mount Point",
  :description => "TMPFS Mount Point",
  :required => true,
  :recipes => [ "utils::create_tmpfs" ]
