# README

Ruby on Rails Application for Parents as Teachers

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
heroku run rake db:migrate
heroku run rake db:seed
heroku open
```

#### Docker

To run docker locally:

Set Database crenentials for `config/database.yml`:
```bash
cp env.sample .env
```

Build/run Container with rails and postgres image:
```bash
docker compose up
```

Starts the app on port 3000. init.sql only runs on the first run. DOCKERFILE sets up ruby on rails app, docker-compose.yml sets up container with ruby on rails app and postgresql database.

Run migrations:

```bash
docker-compose exec app bundle exec rake db:setup db:migrate
```

Build new with changes
```bash
docker compose --build
```