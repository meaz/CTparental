#!/bin/bash

domaine=$(echo $1 | sed -e "s/^www././g")
echo $(grep -e "$domaine" -r /usr/local/etc/CTparental/blacklist-enabled/ | cut -d":" -f1 | sort -u | cut -d"/" -f7 | cut -d"." -f1)

exit
