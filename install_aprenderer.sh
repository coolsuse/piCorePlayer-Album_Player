#!/bin/busybox ash

. /etc/init.d/tc-functions
. /var/www/cgi-bin/pcp-functions

useBusybox
TARGET=`cat /etc/sysconfig/backup_device`
cd /mnt/$TARGET
echo pcp-aplayer_render.tcz >>onboot.lst
cd optional
wget https://raw.githubusercontent.com/sam0402/piCorePlayer-Album_Player/master/pcp-aplayer_render.tcz

pcp_write_var_to_config USER_COMMAND_3 "sudo taskset -c 3 aplayer;aprenderer"
echo "Rebooting..."
sleep 3
pcp br
