mount -o make,private,gid=9997,uid=9997,bind,rw /data/media/0/HChai/thermal_zone88/temp /sys/class/thermal/thermal_zone88/temp
chcon u:object_r:media_rw_data_file:s0 /data/media/0/HChai/thermal_zone88/temp
chown media_rw:media_rw /sys/class/thermal/thermal_zone88/temp