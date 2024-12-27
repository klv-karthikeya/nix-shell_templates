#!/bin/bash
initdb -D .tmp/mydb

# Start PostgreSQL running as the current user
# and with the Unix socket in the current directory
pg_ctl -D .tmp/mydb -l logfile -o "--unix_socket_directories='$PWD'" start

psql --host=localhost --dbname=postgres
