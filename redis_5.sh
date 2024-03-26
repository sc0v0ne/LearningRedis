#!/bin/bash

redis-server --daemonize yes

redis-cli
# Expected: 127.0.0.1:6379>

127.0.0.1:6379> HSET "jogador" "felicity" 676
127.0.0.1:6379> HSET "jogador" "angelina" 632
127.0.0.1:6379> HSET "jogador" "maiara" 678


127.0.0.1:6379> HGETALL "jogador"


127.0.0.1:6379> HINCRBY "jogador" "felicity" 4


127.0.0.1:6379> HGETALL "jogador"

127.0.0.1:6379> HINCRBY "jogador" "maiara" 10

