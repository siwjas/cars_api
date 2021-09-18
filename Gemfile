source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'puma', '~> 5.0'

gem 'apipie-rails'
gem 'active_model_serializers', '~> 0.10.12'
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
gem 'rack-attack'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "pg", "~> 1.2", :group => :production
