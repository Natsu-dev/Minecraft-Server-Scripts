# Minecraft-Server-Scripts

## setup
`/home/user/minecraft` 下にマイクラサーバー本体が存在することを前提にしています。

`sudo systemctl enable` で有効化するファイルは以下の通りです。
- minecraft.service
- minecraft-glowing.timer
- minecraft-autorestart.timer
- minecraft-monitor.service
- wake-on-lan-enable.service

## minecraft
### minecraft.service
マイクラサーバー本体の起動用サービスです。後述する "minecraft-autorestart" によってサーバーを停止した際やサーバーが落ちた際は自動で再起動されます。

## minecraft-glowing
### minecraft-glowing.service
全プレイヤーを発光させるコマンドを発射します。

### minecraft-glowing.timer
"minecraft-glowing.service" を10分おきに実行するようにするタイマーです。

## minecraft-autorestart
### minecraft-autorestart.service
マイクラサーバーを再起動するためのサービスです。実際は終了用のシェルを実行するだけですが、"minecraft.service" 側によって再起動が行われます。

### minecraft-autorestart.timer
"minecraft-autorestart.service" を毎日午前5時に実行するようにするサービスです。

## minecraft-monitor
### minecraft-monitor.service
マイクラサーバーの状態を監視するNode.jsプログラム ["Minecraft-Server-Monitor"](https://github.com/Natsu-dev/Minecraft-Server-Monitor) を実行するためのサービスです。

## wake-on-lan-enable
### wake-on-lan-enable.service
Wake on LANが毎回起動時に無効化されるらしいので有効化するためのサービスです。
WoLを使う予定がないなら有効化しなくて問題ないです。
