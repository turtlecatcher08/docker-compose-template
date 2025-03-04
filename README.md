# stremio-addons-compose-template
A template compose.yaml to self host various Stremio addons and utilities

You can use the Always Free resources of Oracle to set this up. Here is a [set up guide](https://guides.viren070.me/oracle) I made for that. 

A full start-to-finish guide, which assumes you start from scratch, can be found on my site [here](https://guides.viren070.me/selfhosting).

It will go through setting up an Oracle VPS for free, installing Docker, and then a guide on using this compose.yaml. 

If you know what you're doing, then this is the general guide:

1. Ensure docker is installed per https://get.docker.com
2. Download and run the installation script
   ```
   curl https://raw.githubusercontent.com/Viren070/stremio-addons-docker-compose-template/refs/heads/main/install.sh | bash
   ```
3. Open the .env file using:
   ```
   nano .env
   ```
4. Fill in all the values, making sure to read all the comments.
5. Run this command:
   ```
   docker compose --profile all up -d
   ```
   - You can check the compose.yaml or the full guide above to see what profiles are available.
   - Ensure port 443 and port 80 is open
   - Ensure you have DNS records that handle each hostname you are making use of which will point the hostname to the public IP of your server
   - Ensure you follow the instructions in the .env for any additional instructions that need to be carried out for some services (e.g. adding the prowlarr/jackett api keys or editing Seanime's config.toml)
  
