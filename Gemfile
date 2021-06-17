source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker', '~> 2.15', '>= 2.15.1'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.1'
end

group :test do
  gem 'webmock', '~> 3.11'
  gem 'simplecov', '~> 0.21.0', require: false
  gem 'rubocop-rails', '~> 2.9', '>= 2.9.1'
  gem 'rubocop-rspec', '~> 2.1'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
