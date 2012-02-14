require 'capybara/rails'
require 'valid_attribute'

config.use_transactional_fixtures = false

config.before :each do
if example.metadata[:javascript]
Capybara.server_port = 33333
Capybara.current_driver = :selenium
end
if Capybara.current_driver == :rack_test
DatabaseCleaner.strategy = :transaction
else
DatabaseCleaner.strategy = :truncation
end
DatabaseCleaner.start
end

config.after(:each) do
DatabaseCleaner.clean
end
