#!/bin/bash

cd
sudo mkdir -p /portainer/Files/AppData/Config/portainer
sudo docker pull portainer/portainer-ce:2.21.3
sudo docker run -d -p 9000:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /portainer/Files/AppData/Config/portainer:/data portainer/portainer-ce:2.21.3 --templates=https://raw.githubusercontent.com/Lissy93/portainer-templates/main/templates.json
