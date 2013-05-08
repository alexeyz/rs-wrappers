#
# Cookbook Name:: rs-rabbitmq
# Recipe:: plugin_management
#
# Copyright RightScale, Inc. All rights reserved. All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.


rightscale_marker :begin
include_recipe "rabbitmq::plugin_management"

node['rs-rabbitmq']['is_admin_node']

rightscale_marker :end
