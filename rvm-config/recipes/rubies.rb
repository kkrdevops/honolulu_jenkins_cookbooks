bash "setup system rubies" do
  # use mount command and S3 bucket for azn lnx 2014.09 ruby build
  # also faster than building
  code "/usr/local/rvm/bin/rvm mount -r https://s3.amazonaws.com/StelligentLabsResources/rvm/rubies/amazon/ruby-1.9.3-p551.tar.bz2 --verify-downloads 2"
end

bash "setup user rubies" do
  # use mount command and S3 bucket for azn lnx 2014.09 ruby build
  # also faster than building
  code ". /var/lib/jenkins/.profile; /var/lib/jenkins/.rvm/bin/rvm mount -r https://s3.amazonaws.com/StelligentLabsResources/rvm/rubies/amazon/ruby-1.9.3-p551.tar.bz2 --verify-downloads 2"
  user 'jenkins'
end

rvm_default_ruby 'system' do
	ruby_string '1.9.3'
end

rvm_default_ruby 'jenkins'	do
	ruby_string '1.9.3'
	user 'jenkins'
end