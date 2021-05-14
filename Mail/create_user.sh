#!/bin/bash

useradd -m -G mail -p "$2" "$1"
touch /var/mail/"$1"
chown "$1":mail /var/mail/"$1"