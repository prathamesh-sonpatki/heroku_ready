### Rails + Heroku

- A new Rails app can't be deployed to Heroku right away. This Rails [template](https://guides.rubyonrails.org/rails_application_templates.html) bridges the gap
and can make a Rails app **Heroku Ready**.


### What does it do different than default Rails app?

- Changes database to PostgreSQL.
- Adds Procfile.

#### Upcoming:

- Error handling addons.
- Logging addons.

### How to use?

#### In an existing app:

```sh
$ bin/rails app:template LOCATION=https://raw.githubusercontent.com/prathamesh-sonpatki/heroku_ready/main/rails.rb
       rails  db:system:change --to=postgresql
   identical  config/database.yml
        gsub  Gemfile
        gsub  Gemfile
    conflict  Procfile
Overwrite /Users/prathamesh/Projects/sources/sample_app/Procfile? (enter "h" for help) [Ynaqdhm] Y
       force  Procfile
Run following command to add linux platform dependency required for deployment
bundle lock --add-platform x86_64-linux
```

#### Create new Heroku Ready app:

```sh
rails new blog -m https://raw.githubusercontent.com/prathamesh-sonpatki/heroku_ready/main/rails.rb
```
