require_relative 'boot'
require 'rails/all'
require 'redis'
require 'redis-rails'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Housewatch
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Setup Redis
    redis = Redis.new(:host => "0.0.0.0", :port => 6380)
    # Setup background jobs for resque 
    config.active_job.queue_adapter = :resque
  end
end
