#!/bin/bash


redis-server --daemonize yes

redis-cli
# Expected: 127.0.0.1:6379>


# Create
# 127.0.0.1:6379> SET 'players_online' 112
# OK
# 127.0.0.1:6379>

# GET
# 127.0.0.1:6379> GET players_online
# "112"
# 127.0.0.1:6379>

# Update
# 127.0.0.1:6379> SET 'players_online' 222
# OK
# 127.0.0.1:6379> GET players_online
# "222"
# 127.0.0.1:6379>

# Delete
# 127.0.0.1:6379> DEL players_online
# (integer) 1
# 127.0.0.1:6379> GET players_online
# (nil)
# 127.0.0.1:6379>


redis-cli shutdown
