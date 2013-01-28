maintainer       "github.com/gonzalez"
license          "All rights reserved"
description      "System Utilities"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"


recipe "utils::extract_test", "extracts file"

attribute "utils/file",
:display_name => "Filename"
