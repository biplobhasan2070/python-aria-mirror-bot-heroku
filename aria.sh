export MAX_DOWNLOAD_SPEED=0
export MAX_CONCURRENT_DOWNLOADS=10
aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port $RPC_LISTEN_PORT --max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS --max-connection-per-server=10 --rpc-max-request-size=1024M --seed-time=0.01 --min-split-size=10M --follow-torrent=mem --split=10 --rpc-secret=$ARIA_RPC_SECRET --bt-stop-timeout=600 --max-overall-upload-limit=1 --daemon=true
echo "Aria2c daemon started"
