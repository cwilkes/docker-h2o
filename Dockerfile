FROM dockerfile/java:oracle-java7

RUN wget https://s3.amazonaws.com/h2o-release/h2o/rel-markov/1/h2o-2.8.1.1.zip
RUN unzip h2o-2.8.1.1.zip
RUN mv h2o-2.8.1.1 /h2o

EXPOSE 54321

ENTRYPOINT ["java", "-jar", "/h2o/h2o.jar"]