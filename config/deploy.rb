set :stages, %w(production staging)
set :default_stage, "staging"
require 'capistrano/ext/multistage'
set :application, "Tt"
set :repository,  "git@github.com:sujiravi/teentool.git"
set :scm, :git

set :deploy_to, "/home"

desc "check production task"
task :check_production do

  if stage.to_s == "production"
    puts " \n Are you REALLY sure you want to deploy to production?"
    puts " \n Enter the password to continue\n "
    password = STDIN.gets[0..7] rescue nil
    if password != 'suji'
      puts "\n !!! WRONG PASSWORD !!!"
      exit
    end

  end

end

before "deploy", "check_production"


