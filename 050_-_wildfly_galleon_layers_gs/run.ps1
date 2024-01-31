# run script, kt. spusti aplikaci (+ pripadne docker)
. .\_var.ps1

Get-ChildItem -Path .\logs -Include *.* -File -Recurse | foreach { $_.Delete()}

docker run --rm --name ${Env:APP_NAME} -v .\logs:/opt/jboss/wildfly/standalone/log -p 8080:8080 -p 9990:9990 ${Env:IMG_NAME}