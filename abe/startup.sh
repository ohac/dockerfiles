mkdir -p /mnt/datadir/sha1coin
chown sha1coin /mnt/datadir/sha1coin
/etc/init.d/supervisor start
python -m Abe.abe --config /mnt/data/abe.conf
bash
