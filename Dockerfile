FROM neo4j:4.0.0

LABEL maintainer="Michael Behrisch"

ENV APOC_VERSION 4.0.0.2
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar

RUN wget $APOC_URI && mv apoc-${APOC_VERSION}-all.jar plugins/apoc-${APOC_VERSION}-all.jar

EXPOSE 7474 7473 7687

CMD ["neo4j"]