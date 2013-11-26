##
# Unicorn config at /etc/unicorn/auto.com.rb
# Managed by Chef - Local Changes will be Nuked from Orbit (just to be sure)
##

# What ports/sockets to listen on, and what options for them.
listen "/var/run/unicorn/rails_app.sock", :tcp_nodelay => true, :backlog => 100

working_directory '/var/www/projects/rails_app/current'

# What the timeout for killing busy workers is, in seconds
timeout 30

# Whether the app should be pre-loaded
preload_app true

# How many worker processes
worker_processes 8


# Run forked children as specified user/group
user "deploy", "deploy"


# What to do before we fork a worker
before_fork do |server, worker|
  sleep 1
end
