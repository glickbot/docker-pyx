docker-pyx
==========

Dockerfile for building http://pretendyoure.xyz/ code

* [https://github.com/ajanata/PretendYoureXyzzy] (https://github.com/ajanata/PretendYoureXyzzy)

### Requirements
* [https://www.docker.com/](https://www.docker.com/)
* (if on Win/OSX) [http://boot2docker.io/](http://boot2docker.io/)

### Usage

##### Building

Build the Docker image

	docker build -t "pyx" .

##### Running

Run the Docker image

	docker -d -p 8080:8080 pyx

##### Using

(On Linux) Visit

	http://localhost:8080
	
(On OSX) Run

	open "http://$(boot2docker ip):8080/"
	
(On Win) Get the IP from ```boot2docker ip```, and visit:

	http://<your boot2docker ip>:8080/
	
##### Stopping/Cleanup

To stop the service:

	docker ps -l
	docker stop <at least 4 characters of the id>
	docker rm <at least 4 characters of the id>
	
Alternatively, if you start the container with:

	docker run -p 8080:8080 --rm pxy
	
It'll clean up after itself, but you can't run this with the ```-d``` flag, which puts it in the background.

Also, you could run:

	docker run -p 8080:8080 --rm -it pxy
	
Which will keep the terminal attached, and also allow you to ctrl+c to stop jetty and break out of the container.

##### Notes:
* To serve pyx to external clients while using boot2docker, you'll need to setup a reverse proxy (nginx/haproxy, etc), or add a bridged network adapter to your boot2docker VM.
* Why Docker??? Because I didn't want to actually install maven. :]
### Dockerfile base

* [maven] (https://registry.hub.docker.com/_/maven/)
