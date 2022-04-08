#include <stdio.h>
#include <thread>
FILE * fp;
char buffer[32];
main()
{
	for (;;) {
        std::this_thread::sleep_for (std::chrono::milliseconds(6000));
		fp=popen("chmod -R 777 /data/media/0/共享目录 ; mount -t auto -o remount,rw /storage/emulated/0/Android/data","r");
        fgets(buffer,sizeof(buffer),fp);
        pclose(fp);
	}
}