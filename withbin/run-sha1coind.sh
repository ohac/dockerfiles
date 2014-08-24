mkdir -p ~/.sha1coin
cat >~/.sha1coin/sha1coin.conf <<EOF
rpcuser=u
rpcpassword=p
daemon=1
EOF
sha1coind
bash
