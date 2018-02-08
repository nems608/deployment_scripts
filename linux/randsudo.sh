#!/bin/sh

for user in $(getent passwd | grep -v root | grep /bin/.*sh | cut -d ':' -f 1); do
    val=$(tr -cd '[0-3]' < /dev/urandom | head -c 1)
    echo $val
    if [ "$val" -eq "0" ]; then
        usermod $user -G '$@'
    fi
done
