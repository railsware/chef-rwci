#
# Cookbook Name:: chef-ci
# Recipe:: default
# Author:: Dmtiry Larkin
#
# Copyright 2013, Railsware, Inc.

require_recipe "rvm"


# local variables
rwci_user      = node["rwci"]["user"]
rwci_group     = node["rwci"]["group"]
rwci_home      = "/home/#{rwci_user}"
rwci_ruby      = node["rwci"]["rvm_ruby"]
rwci_gemset    = node["rwci"]["rvm_gemset"]
rwci_rvm_env   = "#{rwci_ruby}@#{rwci_gemset}"

# rwci_command  = "rvm #{rwci_rvm_env} exec ci"
# rwci_command += %( --name="#{rwci_node_name}") unless rwci_node_name.empty?
# rwci_command += " #{rwci_key}"


# create user and group
group rwci_group do
  action [:create, :manage]
end

user rwci_user do
  comment "RWCI Server"
  gid rwci_group
  home rwci_home
  supports :manage_home => true
  action [:create, :manage]
end


# ensure the rvm environment is setup
rvm_ruby rwci_ruby
rvm_environment rwci_rvm_env

# rvm_gem "rwci" do
#   ruby_string rwci_rvm_env
#   version     rwci_version
#   action      :install
# end

