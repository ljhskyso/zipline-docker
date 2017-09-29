##
# make commands #
help:           ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


##
## SET UP COMMANDS
##
build:          ## build zipline image
	docker build . -t zipline:latest
run:            ## run zipline image attached
	docker run --name zipline --tty --interactive --rm zipline:latest
up:             ## run zipline container detached
	docker run --name zipline --tty --interactive --rm -d zipline:latest
stop:           ## stop running zipline container
	docker stop zipline
commit:         ## commit zipline container to a image
	docker commit zipline zipline:latest
push:           ## push commited image to Docker Hub
	docker tag zipline:latest ljhskyso/zipline:latest
	docker push ljhskyso/zipline:latest
