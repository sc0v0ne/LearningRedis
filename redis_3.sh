#!/bin/bash

redis-server --daemonize yes

redis-cli
# Expected: 127.0.0.1:6379>

MSET "prova:21-06-2019:pedro:geografia" 7.5 "prova:21-06-2019:pedro:japones" 3.5 "prova:21-06-2019:pedro:poesia" 6.5 "prova:21-06-2019:pedro:marcenarioa" 4.5 "prova:21-06-2019:pedro:yoga" 3.5
# 127.0.0.1:6379> MSET "prova:21-06-2019:pedro:geografia" 7.5 "prova:21-06-2019:pedro:japones" 3.5 "prova:21-06-2019:pedro:poesia" 6.5 "prova:21-06-2019:pedro:marcenarioa" 4.5 "prova:21-06-2019:pedro:yoga" 3.5
# OK
KEYS *prova
# 127.0.0.1:6379> KEYS *prova
# (empty array)
KEYS prova*
# 127.0.0.1:6379> KEYS prova*
# 1) "prova:21-06-2019:pedro:poesia"
# 2) "prova:21-06-2019:pedro:japones"
# 3) "prova:21-06-2019:pedro:geografia"
# 4) "prova:21-06-2019:pedro:yoga"
# 5) "prova:21-06-2019:pedro:marcenarioa"
# 127.0.0.1:6379>


HSET "prova:21-06-2019:Xeroxvoldo" "historia" 9.3
# 127.0.0.1:6379> HSET "prova:21-06-2019:Xeroxvoldo" "historia" 9.3
# (integer) 1
HSET "prova:21-06-2019:Xeroxvoldo" "yoga" 3.1
# 127.0.0.1:6379> HSET "prova:21-06-2019:Xeroxvoldo" "yoga" 3.1
# (integer) 1
HSET "prova:21-06-2019:Xeroxvoldo" "japones" 9.3
# 127.0.0.1:6379> HSET "prova:21-06-2019:Xeroxvoldo" "japones" 9.3
# (integer) 1
HSET "prova:21-06-2019:Xeroxvoldo" "ingles" 1.9
# 127.0.0.1:6379> HSET "prova:21-06-2019:Xeroxvoldo" "ingles" 1.9
# (integer) 1
HSET "prova:21-06-2019:Xeroxvoldo" "matematica" 10.0
# 127.0.0.1:6379> HSET "prova:21-06-2019:Xeroxvoldo" "matematica" 10.0
# (integer) 1
# 127.0.0.1:6379>

HGET "prova:21-06-2019:Xeroxvoldo" "ingles"
# 127.0.0.1:6379> HGET "prova:21-06-2019:Xeroxvoldo" "ingles"
# "1.9"
HGET "prova:21-06-2019:Xeroxvoldo" "japones"
# 127.0.0.1:6379> HGET "prova:21-06-2019:Xeroxvoldo" "japones"
# "9.3"
HGET "prova:21-06-2019:Xeroxvoldo" "yoga"
# 127.0.0.1:6379> HGET "prova:21-06-2019:Xeroxvoldo" "yoga"
# "3.1"
# 127.0.0.1:6379>

HKEYS "prova:21-06-2019:Xeroxvoldo"
# 127.0.0.1:6379> HKEYS "prova:21-06-2019:Xeroxvoldo"
# 1) "historia"
# 2) "yoga"
# 3) "japones"
# 4) "ingles"
# 5) "matematica"
HDEL "prova:21-06-2019:Xeroxvoldo" yoga
# 127.0.0.1:6379> HDEL "prova:21-06-2019:Xeroxvoldo" yoga
# (integer) 1
# 127.0.0.1:6379>


HMSET "prova:21-06-2019:Julicrisldi" "japones" 3.5 "poesia" 6.5 "marcenarioa" 4.5 "yoga" 3.5
# 127.0.0.1:6379> HMSET "prova:21-06-2019:Julicrisldi" "japones" 3.5 "poesia" 6.5 "marcenarioa" 4.5 "yoga" 3.5
# OK
# 127.0.0.1:6379>


KEYS "*:*:Julicrisldi"
# 127.0.0.1:6379> KEYS "*:*:Julicrisldi"
# 1) "prova:21-06-2019:Julicrisldi"
# 127.0.0.1:6379>


HGETALL "prova:21-06-2019:Xeroxvoldo"
# 127.0.0.1:6379> HGETALL "prova:21-06-2019:Xeroxvoldo"
# 1) "historia"
# 2) "9.3"
# 3) "japones"
# 4) "9.3"
# 5) "ingles"
# 6) "1.9"
# 7) "matematica"
# 8) "10.0"
# 127.0.0.1:6379>
