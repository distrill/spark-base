FROM uncoil/docker-spark:2.3.0

# this will install all the sbt jars so they don't have to be reinstalled everytime
# there is a new container. this should maybe (probably?) be put into an image we extend
RUN sbt about -v
RUN start-master.sh
RUN start-slave.sh spark://spark:7077
