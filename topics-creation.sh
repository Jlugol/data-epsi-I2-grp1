INPUT=topics.csv
OLDIFS=$IFS
IFS=';'
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read nom parts repl tps
do
	./bin/kafka-topics.sh --bootstrap-server 192.168.1.27:9092 --create --partitions $parts --replication-factor $repl --config retention.ms=$tps --config max.message.bytes=64000 --topic $nom
	echo "Nom : $nom"
	echo "Partitionnement : $parts"
	echo "Replication : $repl"
	echo "Retention : $tps"
done < $INPUT
IFS=$OLDIFS

