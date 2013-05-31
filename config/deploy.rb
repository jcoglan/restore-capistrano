set :application, "reStore"
set :repository,  "git://github.com/jcoglan/restore-capistrano.git"
set :deploy_to,   "/home/jcoglan/www/tmp1.jcoglan.com"
set :scm,         "git"
set :user,        "jcoglan"
set :use_sudo,    false

role :app, "tmp1.jcoglan.com"

namespace :deploy do
  task :finalize_update do
    run "cd #{shared_path} && mkdir -p data"
    run "cd #{release_path} && ln -s #{shared_path}/data ./data"
    run "cd #{release_path} && ln -s #{shared_path}/tmp ./tmp"
  end

  task :start do
    run "cd #{release_path} && ./script/start"
  end

  task :stop do
    run "cd #{release_path} && ./script/stop"
  end

  task :restart do
    stop
    start
  end
end

