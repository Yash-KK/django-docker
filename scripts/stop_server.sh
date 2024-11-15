#!/bin/bash

sudo docker rm -f $(sudo docker ps -aq)
echo "Stop script completed."
