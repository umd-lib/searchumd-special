FROM ruby:2.3.7
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt /var/lib/dpkg /var/lib/cache /var/lib/log

RUN addgroup --gid 9999 app && \
    adduser --uid 9999 --gid 9999 --disabled-password --gecos "Application" app && \
    usermod -L app

USER app
ENV APP_HOME /home/app

WORKDIR $APP_HOME

RUN gem update bundler
COPY Gemfile* $APP_HOME/ 
RUN bundle install
ADD --chown=app:app . $APP_HOME
