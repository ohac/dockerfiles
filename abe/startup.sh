mkdir -p /mnt/datadir/sha1coin
chown sha1coin /mnt/datadir/sha1coin
/etc/init.d/supervisor start
echo local abe root ident >> /etc/postgresql/9.3/main/pg_hba.conf
service postgresql start
sudo -u postgres createdb abe
sudo -u postgres createuser root
echo python -m Abe.abe --config abe.conf
bash
