$docker_image = "ekol-app"
$docker_tag = -join ((97..122) | Get-Random -Count 32 | % {[char]$_})
$docker_full_image = "gcr.io/ekol-md-test/" + $docker_image + ":" + $docker_tag
docker build -t $docker_full_image .
docker push $docker_full_image

kubectl set image deployment $docker_image *=$docker_full_image
