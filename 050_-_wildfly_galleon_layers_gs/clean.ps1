# clean script, kt. vycisti aplikaci (+ docker)
. .\_var.ps1

docker rm -f ${Env:APP_NAME}
docker rmi -f ${Env:IMG_NAME}