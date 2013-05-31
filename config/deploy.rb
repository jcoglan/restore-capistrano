set :application, "reStore"
set :repository,  "git://github.com/jcoglan/restore-capistrano"
set :deploy_to,   "/home/jcoglan/www/tmp1.jcoglan.com"
set :scm,         "git"
set :user,        "jcoglan"
set :use_sudo,    false

role :app, "tmp1.jcoglan.com"

namespace :deploy do
  task :start do
    run "cd #{latest_release} && ./script/start"
  end

  task :stop do
    run "cd #{latest_release} && ./script/stop"
  end

  task :restart do
    stop
    start
  end
end

