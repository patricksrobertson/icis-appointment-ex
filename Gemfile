source 'https://rubygems.org'

ruby '1.9.2'

gem 'rails', '3.2.13'
gem 'rails-api'
gem 'thin'
gem 'active_model_serializers', :github => 'rails-api/active_model_serializers'
gem 'rack-cors', :require => 'rack/cors'
gem 'rack-icis_identity_auth', :require => 'rack/icis_identity_auth'
gem 'postgres_ext'

group :development, :test do
  gem 'debugger'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end
