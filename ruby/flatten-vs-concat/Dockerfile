FROM ruby:2.7.1

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

COPY benchmark.rb benchmark.rb
COPY test.rb test.rb

CMD ruby benchmark.rb
