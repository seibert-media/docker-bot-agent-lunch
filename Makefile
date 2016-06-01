default: build

clean:
	docker rmi quay.io/seibertmedia/bot-agent-lunch

build:
	docker build --no-cache --rm=true -t quay.io/seibertmedia/bot-agent-lunch .

run:
	docker run -e NSQD_ADDRESS=localhost:4150 -e NSQ_LOOKUPD_ADDRESS=localhost:4161 quay.io/seibertmedia/bot-agent-lunch:latest

shell:
	docker run -i -t quay.io/seibertmedia/bot-agent-lunch:latest /bin/bash

upload:
	docker push quay.io/seibertmedia/bot-agent-lunch
