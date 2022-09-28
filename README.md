# README

Ruby on Rails Application for Parent as Teachers

## Versions

Ruby: `ruby '3.1.2'`

Rails: `rails '~> 7.0'`

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
bin/dev
```

Build assets:

```bash
yarn build --progress --color
```


#### Deployment instructions

```bash
git push master
git push heroku master
heroku run rake db:migrate heroku run rake db:seed
heroku open
```
