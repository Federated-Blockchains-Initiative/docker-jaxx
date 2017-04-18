# Jaxx - Your blockchain interface


# Run

To run the container, use something like the following:

```
docker run -d \
       -p 8280:8280 \
       -p 8239:8239 \
       -v /opt/jaxx:/config \
       -e VNC_PASSWD=mypassword \
       -e TZ=Europe/London \
       --name jaxx \
       biwhite/jaxx
```

# Build

If you want to build this yourself.  Clone the repository and then within the folder run:
```
docker build -t biwhite/jaxx .
```

This pulls down version 1.2.4 of Jaxx on an ubuntu base system.

## Environment Variables
- TZ = Set a timezone
- VNC_PASSWD = Set a password for VNC.  Otherwise no auth needed
- WEB_PORT = Where to run the noVNC web based VNC viewer defaults to 8280
- VNC_PORT = Where to run the VNC server defaults to 8239

## Volumes
- /config - symlinked from /root/.config/Jaxx for persistent wallet configuration

## Ports
- 8280 web vnc frontend
- 8239 vnc viewer access

## Usage

Once up and running, connect via a web browser or VNC client and you should see the Jaxx.io app running.  You can then create, pair or restore any old wallets as necessary.  Once you have wallets and if you have mapped a volume into /config the accounts will persist across container restarts.

Point your web browser at http://IP:WEB_PORT/vnc.html, or your vnc client at IP:VNC_PORT.  If you set VNC_PASSWD, enter that when prompted.

## Donations

If you find this container useful, please consider donating to any of the following:

| Type         | Wallet address | QR code |
| -----------: | :------------- | :------ |
| BTC Bitcoin  | 126cDdE9kAGBPsqmcHmrL9RjydE4UQ5js7 | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/btc.png" width="85">) |
| ETH Ethereum | 0xCBb46A29bc72b656d11C3c1Aa709899476d03cad | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/eth.png" width="85">) |
| DASH         | XnacW7JvjjpkMDwhpqQTSPwUzA348EgV6g | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/dash.png" width="85">) |
| ETC Ethereum Classic | 0x46F78206Bd2D2B830c29E9Ac59B7384f323c2ec2 | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/etc.png" width="85">) |
| REP                  | 0x967F42F0D9a4A7310A0F2C105045E25E039720a9 | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/rep.png" width="85">) |
| LTC Litecoin         | Lbdu8uQG7FCt8W4dNqvzZBSuqXoPTVUpef | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/ltc.png" width="85">) |
| ZCASH                | t1dQoztTLtp1jURs215EobA2CxczrrNUDga | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/zcash.png" width="85">) |
| RSK Testnet          | 0xb6fbe48A74471E65aAe1536e4f56677f12022790 | <img src="https://raw.githubusercontent.com/biwhite/docker-jaxx/master/img/rsk.png" width="85">) |

## Credits

- https://jaxx.io/ for their wallet software
- https://github.com/gfjardim for the container I pulled apart to produce this
- https://github.com/phusion for the underlying minimal ubuntu container

