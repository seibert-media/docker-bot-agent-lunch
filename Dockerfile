FROM maven:3.3.9-jdk-8
MAINTAINER Benjamin Borbe <bborbe@rocketnews.de>

RUN set -x \
	&& git clone https://github.com/seibert-media/bot_agent_lunch.git /sources \
	&& cd /sources \
	&& mvn test package \
	&& cp /sources/target/lunch-bot-jar-with-dependencies.jar /bot-agent.jar \
	&& rm -rf /sources

CMD ["java","-Xms150m","-Xmx200m","-jar","/bot-agent.jar"]
