.DEFAULT_GOAL := writer

writer:
	PATH=$$PATH:../arm-cross-compiler/bin/ $${CROSS_COMPILE}gcc -o writer writer.c

clean:
	rm -f writer *.o
