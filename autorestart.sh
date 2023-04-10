#!/bin/sh

/usr/bin/screen -S minecraft -X eval 'stuff "say 120秒後にサーバーの再起動を行います。一旦退出をお願いします。"\015'
/usr/bin/screen -S minecraft -X eval 'stuff "say The server is rebooting in 120 seconds. Please disconnect from the server for a moment, thanks."\015'
/bin/sleep 120
/usr/bin/screen -S minecraft -X eval 'stuff "save-all"\015'
/usr/bin/screen -S minecraft -X eval 'stuff "stop"\015'
/bin/sleep 10
/usr/bin/cp -r /home/user/minecraft/ /home/user/minecraft-backup/`date +%Y%m%d%`-`date +%H%M%S`/
