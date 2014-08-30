mkdir -p /mnt/datadir/sha1coin
mkdir -p /mnt/datadir/sakuracoin
mkdir -p /mnt/datadir/sayacoin
mkdir -p /mnt/datadir/yaycoin
chown coind: /mnt/datadir/sha1coin
chown coind: /mnt/datadir/sakuracoin
chown coind: /mnt/datadir/sayacoin
chown coind: /mnt/datadir/yaycoin
echo local abe root ident >> /etc/postgresql/9.3/main/pg_hba.conf
if [ -a /mnt/datadir/postgresql.tar.gz ]; then
  tar zxf /mnt/datadir/postgresql.tar.gz
fi
service postgresql start
sudo -u postgres createdb abe
sudo -u postgres createuser root
service redis-server start
/etc/init.d/nginx start
/etc/init.d/supervisor start
#cd nomp
#nodejs init.js
bash
