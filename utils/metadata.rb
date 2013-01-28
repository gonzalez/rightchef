maintainer       "github.com/gonzalez"
license          "All rights reserved"
description      "System Utilities"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"


recipe "utils::extract_test", "extracts file"
recipe "utils::log_me_test", "writes to log"
attribute "utils/extract/file",
:display_name => "Filename"
