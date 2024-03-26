#!/bin/bash

redis-server --daemonize yes

redis-cli
# Expected: 127.0.0.1:6379>

127.0.0.1:6379> ZADD "jogador" 689 "lanilda"
127.0.0.1:6379> ZADD "jogador" 649 "xeroxmila"
127.0.0.1:6379> ZADD "jogador" 639 "manivelda"
127.0.0.1:6379> ZADD "jogador" 699 "robmilda"


127.0.0.1:6379> TYPE "jogador"

127.0.0.1:6379> ZREVRANGE "jogador" 0 -1


127.0.0.1:6379> ZREVRANGE "jogador" 0 2


127.0.0.1:6379> ZREVRANGE "jogador" 0 2 WITHSCORES


127.0.0.1:6379> ZREVRANGE "jogador" 0 -1 WITHSCORES



