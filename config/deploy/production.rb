set :user, "ubuntu"
server "ec2-107-22-225-239.compute-1.amazonaws.com", :app, :web, :db, :primary => true
ssh_options[:keys] = ["#{ENV['HOME']}/tthost.pem"]
set :use_sudo, false