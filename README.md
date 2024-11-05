[![Better Stack Badge](https://uptime.betterstack.com/status-badges/v1/monitor/1n3ho.svg)](https://uptime.betterstack.com/?utm_source=status_badge)

# README

Ruby on Rails Application for Parents as Teachers

## Versions

Ruby: `ruby '3.1.2'`

Rails: `rails '~> 7.0'`

Postgresql: `psql 12.3`

## Rake Tasks

### Admin

Collect visits and write to table visit_per_day
```bash
rake admin:collect_visits
```

Database full? Delete old ahoy visits
```bash
rake admin:cleanup_visits MONTHS=3
```

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
heroku run rake db:migrate
heroku run rake db:seed
heroku open
```
