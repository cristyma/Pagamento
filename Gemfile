source 'http://rubygems.org'

gem 'rails', '3.1.0'

#gem 'sqlite3', group: :development
#gem 'heroku', group: :development

group :development	do
	gem 'sqlite3'
	gem 'heroku'
end

gem 'devise' # faz autenticação
gem 'brazilian-rails'

gem 'pg', group: :production

group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'kaminari' # faz paginação
gem 'cancan' # encapsula regras de autorização
gem 'meta_search' #busca

gem 'jquery-rails'

group :development, :test do
  gem 'therubyracer'  #, group: [:development, :test] # prepara para uso do java coffe script
  gem 'rspec-rails'
end
