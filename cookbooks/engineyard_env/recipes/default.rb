#
# Cookbook Name:: engineyard_env
# Recipe:: default
#
ey_cloud_report "engineyard_env" do
  message "setting engineyard env vars with custom recipe"
end

ey_cloud_report "engineyard_env" do
  message "generating Rails initializer"
end

template "/data/teal/current/config/initializers/engineyard_env.rb" do
  owner node[:owner_name]
  group node[:owner_name]
  mode 0644
  source "engineyard_env.erb"
  variables({ :environment => node[:engineyard][:environment] })
end

ey_cloud_report "engineyard_env" do
  message "done"
end
