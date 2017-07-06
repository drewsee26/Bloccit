# Bloccit 

### Bloccit is a Reddit replica.
* The app is deployed on heroku: https://stark-stream-15461.herokuapp.com/
* The source code is available on github: https://github.com/drewsee26/Bloccit

## Features
* Admin users can create topics.
* Public users can create posts and comment on exisiting posts.
* If a user favorites a post, they will receive an email when another comment is added.
* Posts can be upvoted and downvoted.

## Setup and Configuration
**Ruby version 2.3.0 - Rails version 4.2.5**

**Gems used**
```
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda'
  gem 'factory_girl_rails', '~> 4.0'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Use Bootstrap for additional CSS abilities
gem 'bootstrap-sass'
# Used for encrypting User passwords
gem 'bcrypt'
# Used for handling sensitive data with environmental variables
gem 'figaro', '1.0'
```

**Setup:**
* Environmental variables were secured using Figaro and are stored in config/application.yml (ignored by github)
* The config/application.example.yml illustrates the formatting for environmental variables.

**To run Bloccit locally:**
* Clone the repository
* Run bundle install
* Create and migrate the SQLite database with rake db:create and rake db:migrate
* Start the server using rails s
* Run the app on localhost:3000

