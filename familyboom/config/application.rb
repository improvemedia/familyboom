require File.expand_path('../boot', __FILE__)

require 'rails/all'

#Bundler.require(*Rails.groups)
require 'jarvis'

module FamilyBoom
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ru
    I18n.default_locale = :ru
    config.exceptions_app = self.routes
    config.webdav_path = 'fboom'
    config.application_namespace = 'familyboom'
    config.posts_mail_ru_default_rubrics_ids = []
    config.assets.paths << root.join('app', 'assets', 'images').to_s
    config.production_url_options = { host: 'familyboom.ru' } # fake production urls for dev or staging environment
  end
end

