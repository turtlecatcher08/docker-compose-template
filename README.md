# stremio-addons-compose-template
A template compose.yaml to self host various Stremio addons and utilities


## Short Guide 

On your server/VPS: 

1. Install docker per https://get.docker.com
2. Forward port 443
3. Point the necessary domain(s) to the public IP of your server/VPS with your DNS.
4. Run the following commands on your VPS:
   ```
   curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/.env -o .env
   curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/compose.yaml -o compose.yaml
   mkdir -p ./data/mediafusion
   curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/.env.mediafusion -o ./data/mediafusion/.env
   ```
5. Open the .env file using:
   ```
   nano .env
   ```
6. Fill in all the values, making sure to read all the comments.
7. Run this command:
   ```
   docker compose up -d
   ```
8. Go to the prowlarr and jackett dashboards and configure them. Ensure you add authentication as they will be public.
9. Now, fill in the values for `JACKETT_API_KEY`, `PROWLARR_API_KEY`, and `COMET_INDEXERS` by getting the values from the respective dashboards
10. If using Seanime, change the `host` under `[server]` in the ./seanime-config/config.toml file from `127.0.0.1` to `0.0.0.0`
11. Force a recreation for the updated configuration:
    ```
    docker compose down
    docker compose up -d --force-recreate
    ```
