# README

Ruby on Rails Application for Parent as Teachers

## Versions

Ruby: `ruby '2.7.1'`

Rails: `rails '~> 6.0.3.1'`

Postgresql: `psql 12.3`

## Setup
#### Database creation

```bash
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
```

#### Local development

```bash
bundle exec rails s
bin/webpack-dev-server
```

<!-- How to run the test suite -->
<!-- bundle exec rspec -->

#### Deployment instructions

```bash
git push master
git push heroku master
heroku run rake db:migrate heroku run rake db:seed
heroku open
```
