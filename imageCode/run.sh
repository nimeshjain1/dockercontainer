docker run --name icpcon --mount "type=bind,source=/root/nimesh/chefPatternProject/chefClient/clientfiles,target=/etc/cheftest" -p 443:443 -p 80:80 --env-file env-file -d -it test
