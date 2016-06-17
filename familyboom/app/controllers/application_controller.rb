class ApplicationController < Jarvis::ApplicationController
  def env_protection_production
    if Rails.env.staging?
      authenticate_or_request_with_http_basic do |username, password|
        username == 'fb' && password == 'fb'
      end
    end

    super
  end
end
