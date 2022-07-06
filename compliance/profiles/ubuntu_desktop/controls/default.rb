# copyright: 2022, Mike Butler

title "sample section"

# you add controls here
control "packages" do
  impact 0.7
  title "Ubuntu Desktop Packages to be Installed"
  desc "These are the Ubuntu Packages required to be installed"
  describe package ('ubuntu-desktop') do
    it { should be_installed }
  end

end
