#!/usr/bin/env bash

/usr/bin/screen -S minecraft -X eval 'stuff "say サーバーを停止します。"\015'
/usr/bin/screen -S minecraft -X eval 'stuff "say The server is stopping."\015'
/bin/sleep 10
/usr/bin/screen -S minecraft -X eval 'stuff "save-all"\015'
/usr/bin/screen -S minecraft -X eval 'stuff "stop"\015'
