# Do not change this script unless you know what you are doing
java -XX:+UnlockExperimentalVMOptions -XX:+UseContainerSupport -Dserver.port="$PORT" -jar server.jar
