mount | grep 共享目录 | cut -d ' ' -f3 | xargs umount
rm -rf '/data/adb/modules/Hcfile_sharing' '/data/media/0/Android/Hcfile_sharing'