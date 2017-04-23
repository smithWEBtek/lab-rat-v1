source 'https://rubygems.org'

git_source(:github) do |repo_name|
repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
"https://github.com/#{repo_name}.git"
end
#documents
gem 'mailgun'
gem 'paperclip'
gem 'carrierwave'
gem 'cloudinary'
gem 'pdf-reader'

#scraping
gem 'watir'
gem 'nokogiri', '>=1.5.9'
gem 'httparty'

#enumerate e.g. admin, standard via integer in db column
gem 'pundit'
#user authorization
gem 'devise'

#debugging
gem 'pry'
gem 'pry-rails'

#rails, postgres database and puma local server
gem 'rails', '~> 5.0.1'
gem 'pg'
gem 'puma', '~> 3.0'

#style
gem "bootstrap-sass"
gem 'sprockets', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

#javascript, jquery, json, api, serializer
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'json'
gem 'active_model_serializers'

group :development do
 gem 'web-console', '>= 3.3.0'
gem 'listen', '~> 3.0.5'

end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
