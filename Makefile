MBEDTLS=/ssw/projects/pandora/belgrade/mbedtls
CFLAGS+= -I${MBEDTLS}/include -std=c99 -D_GNU_SOURCE


LDFLAGS+=-L${MBEDTLS}/library -lmbedtls -lmbedx509 -lmbedcrypto -lssl -lcrypto -L/usr/local/ssl/lib

all: example2 

example2: example2.c
	${CC} ${CFLAGS} example2.c   -o example2 ${LDFLAGS}


