# frozen_string_literal: true

Raven.configure do |config|
  config.environments = %w[production]
  config.logger = Rails.logger
end
