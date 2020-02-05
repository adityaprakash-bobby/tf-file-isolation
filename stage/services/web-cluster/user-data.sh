#!/bin/bash

echo "Hello World from $(hostname)" > index.html
echo "DB Address: ${db_address}" >> index.html
echo "DB Port: ${db_port}" >> index.html
nohup busybox httpd -f -p ${server_port} &