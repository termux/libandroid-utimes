# libandroid-utimes

Library with implementations of futimes, futimesat and lutimes from
android's libc (bionic).

The functions are declared in sys/time.h (which termux modifies in an
ndk-patch).  libandroid-utimes needs to be added to
TERMUX_PKG_DEPENDS, and -landroid-utimes added to LDFLAGS (or a
similar flag) for a package to be able to make use of this library and
its functions.

To compile, set the CC and AR environmental variables, and then run
make.
