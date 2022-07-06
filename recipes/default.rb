#
# Cookbook:: ubuntu_desktop
# Recipe:: default
#
# Copyright:: 2022, Mike Butler, GNU 3 Licensing.

if node['packages']['ubuntu-desktop']

  log 'Desktop Already Installed' do
    level :info
  end

else
  apt_update 'apt update'

  bash 'install ubuntu-desktop' do
    code <<-EOH
      apt upgrade -y
    EOH
  end

  package %w(gdm3 tasksel)

  bash 'install ubuntu-desktop' do
    code <<-EOH
      tasksel install ubuntu-desktop
    EOH
  end

  reboot 'Reboot post Desktop Install'

end
