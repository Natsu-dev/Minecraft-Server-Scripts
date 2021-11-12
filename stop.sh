#!/bin/sh

/usr/bin/screen -S minecraft -X eval 'stuff "say 120秒後にサーバーを停止します。退出準備をお願いします。"\015'
/usr/bin/screen -S minecraft -X eval 'stuff "say The server is stopping in 120 seconds. Please disconnect from the server, thanks."\015'
/bin/sleep 100
/usr/bin/screen -S minecraft -X eval 'stuff "say 20秒後にサーバーを停止します。退出準備をお願いします。"\015'
/usr/bin/screen -S minecraft -X eval 'stuff "say The server is stopting in 20 seconds. Please disconnect from the server, thanks."\015'
/bin/sleep 20
/usr/bin/screen -S minecraft -X eval 'stuff "save-all"\015'
/usr/bin/screen -S minecraft -X eval 'stuff "stop"\015'
