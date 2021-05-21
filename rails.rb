# Change database to PostgreSQL
rails_command "db:system:change --to=postgresql"

# Add Procfile
file 'Procfile', <<-CODE
web: bundle exec puma -C config/puma.rb
CODE

# Running this command with `run` was not adding nokogiri gem with linux version to Gemfile.lock.
# But manually running it adds it.
say "Run following command to add linux platform dependency required for deployment"
say "bundle lock --add-platform x86_64-linux"
