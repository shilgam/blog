# Blog

Simple blog app built by following getting started guide:  http://guides.rubyonrails.org/getting_started.html

## Getting Started

### Prerequisities
Docker is installed

### Deployment instructions

1. Build the Docker image:

        $ docker-compose build

1. Boot the app:

        $ docker-compose up

1. Set up the database. In another terminal, run:

        $ docker-compose run web rake db:drop db:create db:migrate

1. View the welcome page: http://0.0.0.0:3000

1. Stop the application:

        $ docker-compose down

1. Restart the application:

        $ docker-compose up

1. Rebuild the application:
   1. If you make changes to the Gemfile or the Compose file:

          $ docker-compose up --build

   1.  full rebuild requires a re-run of

          $ docker-compose run web bundle install

      to sync changes in the `Gemfile.lock` to the host, followed by `docker-compose up --build`.

### Run the test suite:

        $ docker run -it --rm blog "rake test"
