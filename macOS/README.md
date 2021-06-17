# For MacOS

Before cloning the repository make sure you have a folder called **.modules/** in your `$HOME` directory. If not then make one usiing `mkdir` 
After cloning, go inside the **macOS/**, there  and you'll need to change the permissions of the `.sh` files. You can do it by
```sh
chomod 700 *.sh
```
Also make a directory called **logs/** inside **macOS/**. Here we will store the run logs and error logs
After this you'll need to run the following commands to download open-jdk11, elasticsearch & Kibana:
```sh
./download-jdk.sh
./download-elastic-kibana.sh
```
After this to start your elasticsearch and Kibana you'll need to run the code below. It takes some time to start it, so have patience. You can check by the following curl command `curl -XGET localhost:9200`
```sh
./start-service.sh
```
After you've confirmed that the service has begun, you can use to browser to go to [localhost:5601](localhost:5601) and you'll have kibana at your disposal.
To stop the above you'll need
```sh
./stop-service.sh
```