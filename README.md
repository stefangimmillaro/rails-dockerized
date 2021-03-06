# Dockerized Rails 6

Created on Ubuntu 20.04

This is a minimal example for a Dockerized Rails project with the following technologies
* Ruby 2.7.2
* Rails 6.0.3.3
* PostgreSQL 13.0
* Redis 6.0.8
* docker-compose 1.27.4
* Slim-Buster base image

## How to
* Install Docker Compose https://docs.docker.com/compose/install/
* Clone repo
* Create a `.env` from `.env.template`. Configure `.env.docker` but keep the DATABASE_HOST as `db`.
* Configure database `config-docker/init.sql` to be consistent with .env
* `$ docker-compose up` (-d to begin build in background) This can take a few minutes
* Once images to come online run `$ docker-compose exec web bundle exec rake db:setup db:migrate` to initialize your virtual database.
* Navigate to http://localhost:3000/ and confirm you see `Rails version: 6.0.3.3` and `Ruby version: ruby 2.7.2p137`

## Links
* https://digitalocean.com/community/tutorials/containerizing-a-ruby-on-rails-application-for-development-with-docker-compose
* https://gorails.com/setup/ubuntu/20.04
* https://guides.rubyonrails.org/getting_started.html
* https://github.com/ledermann/docker-rails (More complete and robust than this repo, similar functionality)

These pages were helpful guides on getting setup. Thank you to the respective authors.
