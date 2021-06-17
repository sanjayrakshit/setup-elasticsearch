#!/bin/bash

# For elastic search
curl -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.13.1-darwin-x86_64.tar.gz
curl -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.13.1-darwin-x86_64.tar.gz.sha512
shasum -a 512 -c elasticsearch-7.13.1-darwin-x86_64.tar.gz.sha512 
tar -xzf elasticsearch-7.13.1-darwin-x86_64.tar.gz
rm elasticsearch-7.13.1-darwin-x86_64.tar.gz

# For kibana
curl -O https://artifacts.elastic.co/downloads/kibana/kibana-7.13.1-darwin-x86_64.tar.gz
curl -O https://artifacts.elastic.co/downloads/kibana/kibana-7.13.1-darwin-x86_64.tar.gz.sha512
shasum -a 512 -c kibana-7.13.1-darwin-x86_64.tar.gz.sha512
tar -xzf kibana-7.13.1-darwin-x86_64.tar.gz
rm kibana-7.13.1-darwin-x86_64.tar.gz