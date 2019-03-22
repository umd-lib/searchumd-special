# SearchUMD-Special

UMD Libraries bento-box search application for searching Special and Digital
collections.

Based on the NSCU QuickSearch Rails engine
([https://github.com/NCSU-Libraries/quick_search][quick_search]).

This application wraps the NCSU QuickSearch engine.

Note: This application is currently using a UMD-customized fork of the
NCSU QuickSearch application at
[https://github.com/umd-lib/quick_search][umd_quick_search].

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
> rails db:reset
```

3) Copy the "env_example" file to ".env" and configure.

4) To run the web application:

```
> rails server
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