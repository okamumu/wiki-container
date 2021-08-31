FROM ruby
RUN apt-get -y update && \
    apt-get -y install libicu-dev cmake && \
    rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install org-ruby  # optional
RUN gem install omnigollum
RUN gem install github-markup
RUN gem install omniauth-github

COPY entrypoint.sh /entrypoint.sh
COPY config.rb /config.rb

WORKDIR /wiki

CMD ["/entrypoint.sh"]
