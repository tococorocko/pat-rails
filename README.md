# README
Ruby version: ruby '2.7.1'
Rails version: rails '~> 6.0.3.1'
Postgresql: psql 12.3

** Configuration

Database creation
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed

bundle exec rails s
bin/webpack-dev-server

How to run the test suite
<!-- bundle exec rspec -->

Deployment instructions
git push master
git push heroku master
heroku run rake db:migrate heroku run rake db:seed
heroku open

System dependencies
...

