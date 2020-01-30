# neo4j-apoc

Dockerfile for Neo4j (v 4.0.0) with installed APOC Plugin (v 4.0.0.2)

It has the same Options as the [official Neo4j-Image](https://hub.docker.com/_/neo4j/)

# Build

```sh
docker build -t neo4japoc:4.0.0 .
```

# Run

```sh
docker run --publish=7474:7474 --publish=7687:7687 --volume=/media/neo4j neo4japoc
```

Make sure that you allow apoc to run its procedures like this:

```
 docker run neo4japoc -e NEO4J_dbms_security_procedures_unrestricted=apoc.*
```
