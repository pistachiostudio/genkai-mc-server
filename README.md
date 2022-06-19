# 限界集落 MC Server

基本的にversionはlatestをとります
- https://github.com/itzg/docker-minecraft-server#versions

## Commands

Setup & Start
```
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

- [ ] sync world data
- [x] set `server-icon.png`
- [ ] plugins
	- [ ] GeyserMC
	- [ ] Floodgate 
	- [ ] LWC Extended
	- [ ] Hidden Armor
	- [ ] Dynmap
- [ ] mc server log forwarder
	- https://github.com/MICKeyzwo/minecraft-log-forwarder
- [ ] set server-name
	- できなくなったらしい
		- https://gaming.stackexchange.com/questions/218612/change-minecraft-server-name

## 謝辞

サーバーの設定やスクリプトなど色々参考にさせていただきました。

- [sksat/mc.yohane.su](https://github.com/sksat/mc.yohane.su)