mkdir -p /mnt/datadir/sha1coin
mkdir -p /mnt/datadir/sakuracoin
chown coind: /mnt/datadir/sha1coin
chown coind: /mnt/datadir/sakuracoin
/etc/init.d/supervisor start
echo local abe root ident >> /etc/postgresql/9.3/main/pg_hba.conf
if [ -a /mnt/datadir/postgresql.tar.gz ]; then
  tar zxf /mnt/datadir/postgresql.tar.gz
fi
service postgresql start
sudo -u postgres createdb abe
sudo -u postgres createuser root
python -m Abe.abe --config abe.conf
bash
