obj-m:= myled1.o

myled.ko: myled1.c 
	make -C /usr/src/linux M=`pwd` V=1 modules
clean:
	make -C /usr/src/linux M=`pwd` V=1 clean
