#!/bin/busybox ash

. /etc/init.d/tc-functions
. /var/www/cgi-bin/pcp-functions

useBusybox
TARGET=`cat /etc/sysconfig/backup_device`
ceo wget https://raw.githubusercontent.com/sam0402/pcp-44.1KHz/master/pcp-aplayer_render.tcz
ce
echo pcp-aplayer_render.tcz >>onboot.lst

pcp_write_var_to_config USER_COMMAND_3 "aplayer; aprenderer"