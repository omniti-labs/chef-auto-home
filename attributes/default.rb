default[:auto_home][:enabled] = true
case node[:platform]
when 'omnios', 'solaris', 'smartos'
  default[:auto_home][:base] = '/export/home'
else
  default[:auto_home][:base] = '/home'
end
