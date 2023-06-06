.POSIX:

XCFLAGS = ${CPPFLAGS} ${CFLAGS} -nostdlib -std=c99 -fPIC -pthread -D_XOPEN_SOURCE=700 \
		  -Wall -Wextra -Wpedantic -Wmissing-prototypes -Wstrict-prototypes \
		  -Wno-unused-parameter
XLDFLAGS = ${LDFLAGS} -shared -Wl,-soname,libatk-1.0.so.0

INCLUDE = -I. -Iatk -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include

OBJ = \
	atk/atkaction.o\
	atk/atkcomponent.o\
	atk/atkdocument.o\
	atk/atkeditabletext.o\
	atk/atk-enum-types.o\
	atk/atkgobjectaccessible.o\
	atk/atkhyperlink.o\
	atk/atkhyperlinkimpl.o\
	atk/atkhypertext.o\
	atk/atkimage.o\
	atk/atkmarshal.o\
	atk/atkmisc.o\
	atk/atknoopobject.o\
	atk/atknoopobjectfactory.o\
	atk/atkobject.o\
	atk/atkobjectfactory.o\
	atk/atkplug.o\
	atk/atkprivate.o\
	atk/atkrange.o\
	atk/atkregistry.o\
	atk/atkrelation.o\
	atk/atkrelationset.o\
	atk/atkselection.o\
	atk/atksocket.o\
	atk/atkstate.o\
	atk/atkstateset.o\
	atk/atkstreamablecontent.o\
	atk/atktable.o\
	atk/atktablecell.o\
	atk/atktext.o\
	atk/atkutil.o\
	atk/atkvalue.o\
	atk/atkversion.o\
	atk/atkwindow.o\

all: libatk-1.0.so.0

.c.o:
	${CC} ${INCLUDE} ${XCFLAGS} -c -o $@ $<

libatk-1.0.so.0: ${OBJ}
	${CC} ${INCLUDE} ${XCFLAGS} -o $@ ${OBJ} ${XLDFLAGS}

install: libatk-1.0.so.0
	mkdir -p ${DESTDIR}/usr/lib64
	cp -f libatk-1.0.so.0 ${DESTDIR}/usr/lib64/libatk-1.0.so
	ln -rsf ${DESTDIR}/usr/lib64/libatk-1.0.so ${DESTDIR}/usr/lib64/libatk-1.0.so.0

uninstall:
	rm -f ${DESTDIR}/usr/lib64/libatk-1.0.so.0 ${DESTDIR}/usr/lib64/libatk-1.0.so

clean:
	rm -f libatk-1.0.so.0 ${OBJ}

.PHONY: all clean install uninstall
