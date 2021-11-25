#!/bin/bash

ps -e | tail -n 1 | awk '{print $1}'