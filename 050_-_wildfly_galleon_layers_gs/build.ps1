. .\_var.ps1

$opt = Read-Host "Build application, eg. y"
if($opt -eq 'y') {
   mvn clean package
}
docker build -f Dockerfile -t ${Env:IMG_NAME} .