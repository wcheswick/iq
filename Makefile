IQ_URL="http://www-cs-faculty.stanford.edu/~knuth/programs/infty-queens.w"
CFLAGS+="-Wno-implicit-int"

all::	iq iq.pdf

iq:	iq.c
	${CC} ${CFLAGS} iq.c -o iq

iq.c:	iq.w
	ctangle iq.w iq.c

iq.pdf:	iq.dvi
	dvipdf iq

iq.dvi:	iq.tex
	tex iq.tex

iq.tex:	iq.w
	cweave iq.w iq.tex

iq.w:
	curl -o iq.w ${IQ_URL}

clean::
	rm -f iq.* *.core

