# Banksyd Docker
The purpose of this repository is to have a way to run the Banksyd binary in docker.

# 📝 Prerequisites
- Docker and Docker-Compose installed.
- Follow the steps for the data folder
- Change the moniker in the docker-compose.yaml file

# 🚀 How to run
`docker-compose up -d`

# 🧐 How to watch the logs
`docker logs banksyd`

# ⚰️ How to stop
`docker-compose stop`

# 🗃️ Data folder
All the data of the testnet will be persisted in the `./data` folder
```
mkdir -p data/config
# Setup the genesis file in your data/config folder
wget -O data/config/genesis.json https://raw.githubusercontent.com/notional-labs/composable-networks/main/banksy-testnet-3/genesis.json
chmod 777 data/
```
