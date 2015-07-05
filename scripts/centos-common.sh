#!/bin/bash

# update CentOS with any patch
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen nc telnet
