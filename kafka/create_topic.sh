cd ~/Programas/kafka_2.11-1.0.0/

#Inside kafka directory
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Usage: ./create_topic.sh topic_name"
else
	topic=$1
	bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic $topic
fi	