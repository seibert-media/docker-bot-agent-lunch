default: build

clean:
	docker rmi bborbe/bot-agent-lunch

build:
	docker build --no-cache --rm=true -t bborbe/bot-agent-lunch .

run:
	docker run -e NSQD_ADDRESS=localhost:4150 -e NSQ_LOOKUPD_ADDRESS=localhost:4161 bborbe/bot-agent-lunch:latest

shell:
	docker run -i -t bborbe/bot-agent-lunch:latest /bin/bash

upload:
	docker push bborbe/bot-agent-lunch
