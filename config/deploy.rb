# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'lovehouse'
set :repo_url, 'git@github.com:BenjaminKim/lovehouse.git'
set :branch, 'master'
set :rails_env, 'production'
#ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :migration_role, ''

set :deploy_to, '/home/deploy/lovehouse'
set :scm, :git

#set :format, :pretty
set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :default_env, { rvm_bin_path: '~/.rvm/bin' }
set :keep_releases, 30

#set :unicorn_rack_env, :production

#after 'deploy:publishing', 'unicorn:restart'
