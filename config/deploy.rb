require "rvm/capistrano"
require "bundler/capistrano"
require 'capistrano/ext/multistage'

set :application, 'Solr Sunspot Search'
set :scm, :git
set :repository, "git@github.com:V1n0d/solr.git"
set :user, "root"
set :scm_passphrase, ""
set :branch, "master"
set :deploy_via, :copy
set :stages, ["staging", "development", "production"]
set :default_stage, "development"
default_run_options[:pty] = true
ssh_options[:forward_agent] = true