#!/bin/bash

DIR=/home/ec2-user/${APPLICATION_NAME}

chown -R web:web ${DIR}
chmod -R g+w ${DIR}
