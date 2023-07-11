# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:5173'  # Replace with the actual URL of your React app
    resource '/api/*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end
end
