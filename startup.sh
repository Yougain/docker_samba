#!/usr/bin/env bash
. /etc/sysconfig/samba
/usr/sbin/smbd --no-process-group $SMBDOPTIONS
tail -f /dev/null
