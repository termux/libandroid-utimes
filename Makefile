CFLAGS += -fpic -shared -std=c11 -Wall -Wextra

all: libandroid-utimes.a libandroid-utimes.so
libandroid-utimes.a: sys_time.o
	$(AR) rcu $@ sys_time.o

libandroid-utimes.so: sys_time.o
	$(CC) $(LDFLAGS) -shared sys_time.c -o $@ -llog

sys_time.o: sys_time.c
	$(CC) $(CFLAGS) -c sys_time.c -o $@

install: libandroid-utimes.a libandroid-utimes.so
	install -D libandroid-utimes.a $(DESTDIR)$(PREFIX)/lib/libandroid-utimes.a
	install -D libandroid-utimes.so $(DESTDIR)$(PREFIX)/lib/libandroid-utimes.so

clean:
	rm -f libandroid-utimes.a libandroid-utimes.so

.PHONY: install
