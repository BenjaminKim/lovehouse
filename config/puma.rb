#!/usr/bin/env puma

tag 'lovehouse'

pidfile 'tmp/pids/puma.pid'
state_path 'tmp/pids/puma.state'
stdout_redirect 'log/access_log', 'log/error_log', true

threads 0,2
workers 0
preload_app!
daemonize true

bind 'unix:/home/ubuntu/lovehouse/shared/tmp/sockets/puma.sock'

# preload_app!
prune_bundler

on_worker_shutdown do
#  KafkaHelper.force_flush_msg_buffer_with_retry_count(10)
end

# on_worker_boot do
#   ActiveSupport.on_load(:active_record) do
#     ActiveRecord::Base.establish_connection
#   end
# end