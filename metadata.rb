name             "chef-ci"
maintainer       "Dmtiry Larkin"
maintainer_email "dmitry.larkin@gmail.com"
license          "MIT"
description      "CI Server Maintanance"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.1.0"

recipe "chef-ci", "Install and configure chef-ci"

depends "rvm"  # https://github.com/fnichol/chef-rvm

%w[ubuntu debian redhat centos fedora amazon].each do |os|
  supports os
end
