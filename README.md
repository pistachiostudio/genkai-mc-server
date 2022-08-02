# 限界集落 MC Server

ピスタチオゲーム部の自前マイクラサーバー「限界集落」です。

どなたでもご自由に入って遊んでいただければとおもいます。

JAVA & BE(統合版) どちらも入れます。

## Spec

- JAVA 版 MINECRAFT 1.19.1
	- JAVA 版ですが BE 版 も入れます
- メモリ
	- 4G
	- `docker-compose.yml` の `services.mc.environment.MEMORY` で定義してます

## Commands

Setup & Start
```shell
export DISCORD_WEBHOOK_URL=YOUR_WEBHOOK_URL
./setup.sh
docker compose up -d
```

Restart
- `docker-compose.yml` の `services.mc.environment.VERSION` を更新してリスタートすると指定したバージョンに変更されます
```
docker compose restart
```

Stop
```
docker compose down
```

## Data Directory

https://github.com/itzg/docker-minecraft-server#data-directory

## TODO

### High
- [x] dynmap の https 化
- [x] サーバーアイコンの設定
- [ ] サーバーの定期再起動設定
- [ ] 自動定期バックアップ
	- 参考: https://github.com/sksat/mc.yohane.su
- [x] ~~tkm999からOP権限を剥奪~~
- [ ] 全員寝なくても過半数が寝たら朝になるように設定変更
- [x] 旧サーバーからのデータ移行
- [x] set `server-icon.png`
- [ ] plugins
	- [x] GeyserMC
	- [x] Floodgate 
	- [x] LWC Extended
	- [x] Hidden Armor
		- [ ] ProtocolLib エラー調査(@zztkm だけかも)
			- https://www.spigotmc.org/resources/protocollib.1997/
	- [x] Dynmap
- [x] mc server log forwarder
	- https://github.com/MICKeyzwo/minecraft-log-forwarder
- [ ] 権限管理 (`/dmarker`など)
- [x] BE版のスキン適用
### Mid
- [ ] ログイン前のチャット表示 ChatReplay導入 (参考: https://seesaawiki.jp/perominecraft/d/ChatReplay)
- [ ] 初期リスでの サーバー説明
- [ ] 再起動10分前くらいにチャットでアナウンスを表示「10分後サーバーが自動再起動されます」のような文言
### Low
- [ ] 拠点の保護機能
- [ ] Discordでの現在オンラインのプレイヤー数表示 (参考: https://github.com/ZixeSea/ServerStats)
- [ ] plugins のインストールスクリプト
	- 導入したいプラグインをインストールするスクリプトを作成する

## 謝辞

サーバーの設定やスクリプトなど色々参考にさせていただきました。

- [sksat/mc.yohane.su](https://github.com/sksat/mc.yohane.su)

## 参考

- https://github.com/itzg/docker-minecraft-server#versions