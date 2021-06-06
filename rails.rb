# Change database to PostgreSQL as Heroku needs PostgreSQL.
rails_command "db:system:change --to=postgresql"

# Add Procfile.
file 'Procfile', <<-CODE
web: bundle exec puma -C config/puma.rb
release: bundle exec rails db:migrate
CODE

# Gems
gem_group :development, :test do
  gem "dotenv-rails"
end

# Running this command with `run` was not adding nokogiri gem with linux version to Gemfile.lock.
# But manually running it adds it.
say "Run following command to add linux platform dependency required for deployment"

# Reason for adding this: https://prathamesh.tech/2021/04/18/bundler-2-2-3-and-deployment-of-ruby-apps/
say "bundle lock --add-platform x86_64-linux"
