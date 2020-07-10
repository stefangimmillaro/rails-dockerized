# Dockerized Rails 6

Created on Ubuntu 20.04

This is a minimal example for a Dockerized Rails project with the following technologies
* Ruby 6.0.3.2
* Rails 2.7.1
* PostgreSQL 12.3
* Redis 6.0.5
* docker-compose 1.26.2
* Slim-Buster base image

## How to
* Install Docker Compose https://docs.docker.com/compose/install/
* Clone repo
* Create a `.env` from `.env.sample`
* Configure database `config-docker/init.sql` to be consistent with .env
* `$ docker-compose up`
* Once web and db images come up `$ docker-compose exec web bundle exec rake db:setup db:migrate`
* Navigate to http://localhost:3000/ and confirm you see `Rails version: 6.0.3.2` and `Ruby version: ruby 2.7.1p83`

## Links
* https://digitalocean.com/community/tutorials/containerizing-a-ruby-on-rails-application-for-development-with-docker-compose
* https://gorails.com/setup/ubuntu/20.04
* https://guides.rubyonrails.org/getting_started.html

These pages were helpful guides on getting setup. Thank you to the respective authors.
