# SearchUMD-Special

UMD Libraries bento-box search application for searching Special and Digital
collections.

Based on the NSCU QuickSearch Rails engine
([https://github.com/NCSU-Libraries/quick_search][quick_search]).

## Quick Start

Requires:

* Ruby 2.3.7
* Bundler

### Setup

1) Clone this repository.

2) Install the dependencies:

```
> gem install bundler
> bundle install --without production
```

2) Set up the database:

```
> ./bin/rails db:reset 
```

3) Copy the "env_example" file to ".env" and configure.

4) To run the web application:

```
> ./bin/rails s
```

## Environment Configuration

Some searchers used by this application require API keys to perform searches.
To keep these keys secure, and out of the GitHub repository, these keys are
should be configured through the environment.

The application uses the "dotenv" gem to configure the environment.
The gem expects a ".env" file in the root directory to contain the environment
variables that are provided to Rails. A sample "env_example" file has been
provided to assist with this process. Simply copy the "env_example" file to
".env" and fill out the parameters as appropriate.

The configured .env file should _not_ be checked into the Git repository, as it
contains credential information.

[quick_search]: https://github.com/NCSU-Libraries/quick_search


## Docker

Included is a Dockerfile and Dockerfile.prod for running the app in Docker. 
The Dockerfile.prod should mirror the Dockerfile, but just install production
gems and do asset precompilation ( more on this below ) 

To build in development mode, use docker-compose to bring up the application: 

```
$ docker-compose build
$ docker-compose run app rake db:create db:setup
$ docker-compose up
```

After Docker does its thing, you should be able to see the application at
http://localhost:3000. 


To run a production/pre-build version of the application, you can add the
docker-compose.production.yml to you compose:

```
$ docker-compose  -f docker-compose.yml -f docker-compose.production.yml build
$ docker-compose  -f docker-compose.yml -f docker-compose.production.yml run app rake db:create db:setup
$ docker-compose  -f docker-compose.yml -f docker-compose.production.yml up
```

The docker-compose.production.yml includes a minimal NGINX container that will
serve the application out at http://localhost 

If you want to use a relative root, but sure to set that in your .env file.
Then before you bring the application up, run:

```
$ docker-compose  -f docker-compose.yml -f docker-compose.production.yml run app rake assets:precompile
```

You will need to update you nginx configuration as well.


To build the production docker and update the hub:

```
$ docker build  -f Dockerfile.prod -t docker.lib.umd.edu/searchumd-special:develop .
$ docker push docker.lib.umd.edu/searchumd-special:develop
``` 
