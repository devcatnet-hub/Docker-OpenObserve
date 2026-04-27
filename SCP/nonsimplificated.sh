#!/bin/bash

/usr/sbin/sshd -D &

exec /APP/openobserve
