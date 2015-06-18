service redis-server start
/etc/init.d/supervisor start
cron
echo '0 0 * * * cd /dnsseed-ruby && ruby getpnseed.rb' | crontab
sleep 315360000
