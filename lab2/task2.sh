#!/bin/bash

ps a -e | grep "/sbin/" | awk 'BEGIN{print "/sbin/ processes:"} {print $1}'