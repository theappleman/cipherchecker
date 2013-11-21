#!/bin/bash

TOCHECK=${$1:?Needz host:port}

openssl ciphers|awk 'BEGIN{RS=":"}{print$0}'|xargs -n1 openssl s_client -connect $TOCHECK -cipher 2>/dev/null|awk '/TLSv1\/SSLv3, Cipher is/{print$5}'
