# fix_pxe
Fix PXE Configuration to change NFSROOT to relay hostname

Download fix_pxe.sh to /onapp/utilities/relay/fix_pxe.sh on the Main CP Server.

Insert into /etc/crontab:
* * * * * root /bin/bash /onapp/utilities/relay/fix_pxe.sh
