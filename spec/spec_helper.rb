require 'bundler'
Bundler.require :default, :test
require 'qu'
require 'qu/backend/spec'

RSpec.configure do |config|
  config.before do
    Qu.connection = nil
    Qu.backend = mock('a backend', :reserve => nil, :failed => nil, :completed => nil,
      :register_worker => nil, :unregister_worker => nil)
  end
end