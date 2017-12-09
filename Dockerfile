FROM ruby:2.4.2

ADD Gemfile* /srv/
ADD *.gemspec /srv/
WORKDIR /srv

RUN bundle install

ADD . /srv