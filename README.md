# 限界集落 MC Server

基本的にversionはlatestをとります
- https://github.com/itzg/docker-minecraft-server#versions

## Commands

Setup & Start
```shell
export DISCORD_WEBHOOK_URL=YOUR_WEBHOOK_URL
./setup.sh
docker compose up -d
```

Restart
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
- [ ] dynmap の https 化
- [x] サーバーアイコンの設定
- [ ] サーバーの定期再起動設定
- [x] ~~tkm999からOP権限を剥奪~~
  - [x] 権限レベルを変更 4 -> 3
- [ ] 全員寝なくても過半数が寝たら朝になるように設定変更
- [x] 旧サーバーからのデータ移行
- [x] set `server-icon.png`
- [ ] plugins
	- [x] GeyserMC
	- [x] Floodgate 
	- [x] LWC Extended
	- [ ] Hidden Armor
		- [ ] ProtocolLib (こいつがエラーを吐くが原因がわかっていない)
			- https://www.spigotmc.org/resources/protocollib.1997/
	- [ ] Dynmap
- [x] mc server log forwarder
	- https://github.com/MICKeyzwo/minecraft-log-forwarder
- [ ] 権限管理 (`/dmarker`など)
- [ ] BE版のスキン適用
### Mid
- [ ] 自動定期バックアップ
	- 参考: https://github.com/sksat/mc.yohane.su
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
