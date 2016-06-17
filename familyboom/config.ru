# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
if Rails.env.production? || Rails.env.staging?
  require 'unicorn/worker_killer'
  # Max requests per worker
  use Unicorn::WorkerKiller::MaxRequests, 2048, 4096, true
  # Max memory size (RSS) per worker
  use Unicorn::WorkerKiller::Oom, (700*(1024**2)), (900*(1024**2)), 64, true
end

run Rails.application
