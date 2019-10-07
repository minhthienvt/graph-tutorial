# Load the Rails application.
require_relative 'application'

# Load OAuth settings
ENV['AZURE_APP_ID'] = 'c75a0a4c-b1b9-4ff7-85ac-14c5f8838411'
ENV['AZURE_APP_SECRET'] = 'xz=2v6r7wJQ4ZbI:D[.7u-f=021XYRwV'
ENV['AZURE_SCOPES'] = 'openid profile email offline_access user.read calendars.read'

# Initialize the Rails application.
Rails.application.initialize!

