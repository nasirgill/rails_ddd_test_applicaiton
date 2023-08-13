# frozen_string_literal: true

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
factories = []
factories += Dir[Rails.root.join('spec/factories/**/*.rb')].to_a
factories.each { |f| require f }
