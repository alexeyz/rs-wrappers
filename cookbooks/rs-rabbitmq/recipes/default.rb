#
# Cookbook Name:: rs-rabbitmq
# Recipe:: default
#
# Copyright RightScale, Inc. All rights reserved. All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.


rightscale_marker :begin
include_recipe "rabbitmq::default"

# Installs the right_aws gem
r = gem_package "right_aws" do
  gem_binary "/opt/rightscale/sandbox/bin/gem"
  action :nothing
end
r.run_action(:install)

# Reloads newly install gem.
Gem.clear_paths


rs_rmq:host=svc03
rs_rmq:ip=172.15.2.167

rightscale_marker :end
