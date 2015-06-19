FROM ohac/base
RUN apt-get -y install wget curl htop vim
RUN apt-get -y install ruby
RUN apt-get -y install git
RUN apt-get -y install redis-server
RUN gem install redis sinatra haml aws-sdk
RUN git clone https://github.com/ohac/dnsseed-ruby.git
RUN apt-get -y install supervisor
ADD sv-dnsseed.conf sv-web.conf /etc/supervisor/conf.d/
ADD startup.sh /
ADD config.rb /dnsseed-ruby/
EXPOSE 4567
ENTRYPOINT ["/bin/bash", "startup.sh"]
# docker run --name dnsseed -d -p 127.0.0.1:4567:4567 \
#     -v $HOME/data/dnsseed:/var/lib/redis \
#     -v $PWD/config.rb:/dnsseed-ruby/config.rb:ro \
#     -v $PWD/aws-credentials:/root/.aws/credentials:ro ohac/dnsseed
