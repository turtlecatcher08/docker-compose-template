curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/.env -o .env
curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/compose.yaml -o compose.yaml
mkdir -p ./data/mediafusion
mkdir -p ./data/honey
curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/honey.config.json -o ./data/honey/config.json
curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/.env.mediafusion -o ./data/mediafusion/.env