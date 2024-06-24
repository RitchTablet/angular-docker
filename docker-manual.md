# Pasos para crear la imagen y desplegarla de manera manual a mi ubuntu server

* docker build -t test-angular-docker .
* docker save -o test-angular-docker.tar test-angular-docker

* scp test-angular-docker.tar ritch@ritch.server:./apps/angular-app

* docker load -i ./apps/angular-app/test-angular-docker.tar
* docker run -d -p 80:80 test-angular-docker