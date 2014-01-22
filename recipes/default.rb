# auto_home:default
return unless node[:auto_home][:enabled]

template "/etc/auto_home" do
	source "auto_home.erb"
	owner "root"
	group "bin"
	mode 0751
	notifies :restart, "service[autofs]", :immediately 
end

service "autofs" do
	supports :restart => true, :status => true
	action :nothing
end
