ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require Jarvis::Engine.root.join('spec', 'spec_helper')

RSpec.configure do |c|
  c.filter_run_excluding group: :photo
end
