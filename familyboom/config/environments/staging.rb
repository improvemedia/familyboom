FamilyBoom::Application.configure do
  Rails.application.routes.default_url_options[:host] = 'http://staging.familyboom.ru'

  config.action_mailer.default_url_options = { host: 'http://staging.familyboom.ru' }
  config.action_mailer.asset_host = 'http://staging.familyboom.ru'
end
