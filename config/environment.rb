# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
I18n.available_locales = ['pt-BR', 'en', :de]
