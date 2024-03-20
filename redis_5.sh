#!/bin/bash

redis-server --daemonize yes

redis-cli
# Expected: 127.0.0.1:6379>

127.0.0.1:6379> RPUSH "fila:confirma-celular" "234501"
#(integer) 1
127.0.0.1:6379> RPUSH "fila:confirma-celular" "234502"
#(integer) 2
127.0.0.1:6379> RPUSH "fila:confirma-celular" "234503"
#(integer) 3
127.0.0.1:6379> RPUSH "fila:confirma-celular" "234504"
#(integer) 4
127.0.0.1:6379> LLEN "fila:confirma-celular"
# (integer) 4
127.0.0.1:6379> LRAnGE "fila:confirma-celular" 0 3
1) "234501"
2) "234502"
3) "234503"
4) "234504"
127.0.0.1:6379> LINDEX "fila:confirma-celular" 0
#"234501"
127.0.0.1:6379> 


