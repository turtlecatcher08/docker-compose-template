# stremio-addons-compose-template
A template compose.yaml to self host various Stremio addons and utilities


## Short Guide 

On your server/VPS: 

1. Install docker per https://get.docker.com
2. Forward port 443
3. Point the necessary domain(s) to the public IP of your server/VPS with your DNS.
4. Download the compose.yaml and .env files and place them in the same directory.
5. Open up the .env file and add in the necessary values.
6. Run this command:
   ```
   docker compose up -d
   ```
7. Go to the prowlarr and jackett dashboards and configure them. Ensure you add authentication as they will be public.
8. Now, fill in the values for `JACKETT_API_KEY`, `PROWLARR_API_KEY`, and `COMET_INDEXERS` by getting the values from the respective dashboards
9. If using Seanime, change the `host` under `[server]` in the ./seanime-config/config.toml file from `127.0.0.1` to `0.0.0.0`
10. Force a recreation for the updated configuration:
   ```
   docker compose up -d --force-recreate
   ```
