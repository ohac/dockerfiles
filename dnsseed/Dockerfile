FROM ohac/base
RUN apt-get -y install wget curl htop vim
RUN apt-get -y install ruby
RUN apt-get -y install git
RUN apt-get -y install redis-server
RUN gem install redis
RUN gem install sinatra
RUN gem install haml
RUN git clone https://github.com/ohac/dnsseed-ruby.git
RUN apt-get -y install supervisor
ADD sv-dnsseed.conf /etc/supervisor/conf.d/
ADD sv-web.conf /etc/supervisor/conf.d/
ADD startup.sh /
ADD config.rb /dnsseed-ruby/
EXPOSE 4567
ENTRYPOINT ["/bin/bash", "startup.sh"]
# MEMO: docker run -p 4567:4567 -it -d ohac/dnsseed
