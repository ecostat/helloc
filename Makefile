#PREFIX is environment variable, but if it is not set, then set default value
ifeq ($(PREFIX),)
    PREFIX := /lib
    MYDIR := .
endif


all: hi
	gcc -o hi -static hi.c

install: hi
	install -d $(MYDIR)$(PREFIX)
	install -m 755 hi $(MYDIR)$(PREFIX)



