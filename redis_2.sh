#!/bin/bash

redis-server --daemonize yes

redis-cli
# Expected: 127.0.0.1:6379>

SET "nota:14-04-2019:matematica" 10.0
SET "nota:20-06-2019:fisica" 9.9
SET "nota:10-03-2019:geografia" 3.3
SET "nota:20-06-2019:historia" 1.1
SET "nota:10-03-2019:ingles" 4.8


KEYS *
# 127.0.0.1:6379> KEYS *
# 1) "nota:14-04-2019:matematica"
# 2) "data-nascimento"
# 3) "nota:20-06-2019:fisica"
# 4) "nota:10-03-2019:geografia"
# 5) "nome"
# 6) "nota:20-06-2019:historia"
# 7) "players_online"
# 8) "usuarios_online"
# 9) "nota:10-03-2019:ingles"
# 127.0.0.1:6379>


KEYS nota*
# 127.0.0.1:6379> KEYS nota*
# 1) "nota:14-04-2019:matematica"
# 2) "nota:20-06-2019:fisica"
# 3) "nota:10-03-2019:geografia"
# 4) "nota:20-06-2019:historia"
# 5) "nota:10-03-2019:ingles"
# 127.0.0.1:6379>

KEYS nota:*06*
# 127.0.0.1:6379> KEYS nota:*06*
# 1) "nota:20-06-2019:fisica"
# 2) "nota:20-06-2019:historia"
# 127.0.0.1:6379>

KEYS nota:*-0[46]*
# 127.0.0.1:6379> KEYS nota:*-0[46]*
# 1) "nota:14-04-2019:matematica"
# 2) "nota:20-06-2019:fisica"
# 3) "nota:20-06-2019:historia"
# 127.0.0.1:6379>


SET "nota:02-05-2019:calculus" 10.0
# 127.0.0.1:6379> SET "nota:02-05-2019:calculus" 10.0
# OK
KEYS nota:*-0[456]*
# 127.0.0.1:6379> KEYS nota:*-0[456]*
# 1) "nota:14-04-2019:matematica"
# 2) "nota:20-06-2019:fisica"
# 3) "nota:20-06-2019:historia"
# 4) "nota:02-05-2019:calculus"
# 127.0.0.1:6379>

SET "promotion:ps5:20-05-2019:value" 17342.99
# 127.0.0.1:6379> SET "promotion:ps5:20-05-2019:value" 17342.99
# OK
SET "promotion:ps5:20-05-2019:value" 17342.99
# 127.0.0.1:6379> SET "promotion:xboxOneS:20-05-2019:value" 33742.99
# OK
SET "promotion:nintendoWiu5102:20-05-2019:value" 1123.99
# 127.0.0.1:6379> SET "promotion:nintendoWiu5102:20-05-2019:value" 1123.99
# OK
# 127.0.0.1:6379>

SET "promotion:ps5:23-05-2019:value" 11323.99
# 127.0.0.1:6379> SET "promotion:ps5:23-05-2019:value" 11323.99
# OK
# 127.0.0.1:6379>


KEYS promotion*
# 127.0.0.1:6379> KEYS promotion*
# 1) "promotion:ps5:20-05-2019:value"
# 2) "promotion:xboxOneS:20-05-2019:value"
# 3) "promotion:nintendoWiu5102:20-05-2019:value"
# 4) "promotion:ps5:23-05-2019:value"
KEYS promotion:ps5*
# 127.0.0.1:6379> KEYS promotion:ps5*
# 1) "promotion:ps5:20-05-2019:value"
# 2) "promotion:ps5:23-05-2019:value"
KEYS promotion:*20-*
# 127.0.0.1:6379> KEYS promotion:*20-*
# 1) "promotion:ps5:20-05-2019:value"
# 2) "promotion:xboxOneS:20-05-2019:value"
# 3) "promotion:nintendoWiu5102:20-05-2019:value"
# 127.0.0.1:6379>


MSET "nota:03-07-2019:portugues" 6 "nota:19-07-2019:japones" 10 "nota:16-07-2025:matematica" 4.4
# 127.0.0.1:6379> MSET "nota:03-07-2019:portugues" 6 "nota:19-07-2019:japones" 10 "nota:16-07-2025:matematica" 4.4
# OK
