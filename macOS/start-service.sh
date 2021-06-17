#!/bin/bash

# Set path of java
export PATH="$HOME/.modules/jdk-11.jdk/Contents/Home/bin:$PATH"
echo "Java version:" $(java --version)

# Run elastic search
nohup ./elasticsearch-7.13.1/bin/elasticsearch 1>logs/elastic-log.txt 2>logs/elastic-err.txt &

# Run Kibana
nohup ./kibana-7.13.1-darwin-x86_64/bin/kibana 1>logs/kibana-log.txt 2>logs/kibana-err.txt &

echo "\nIt'll take time to start, you can visit logs to see progress..\n"
echo "Check with \"curl -XGET localhost:9200\""