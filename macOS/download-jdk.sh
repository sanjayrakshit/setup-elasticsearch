#!/bin/bash

# Download open-jdk 11
curl https://download.java.net/java/ga/jdk11/openjdk-11_osx-x64_bin.tar.gz -o $HOME/.modules/open-jdk-11.tar.gz

# Extract in a hidden folder called .modules | `mkdir .modules` if it doesn't exist
tar -xf $HOME/./open-jdk-11.tar.gz -C $HOME/.modules/

# Remove .tar.gz file after job
rm $HOME/.modules/open-jdk-11.tar.gz