CC=pdflatex
CFLAGS  = -file-line-error
CFLAGS += -halt-on-error 

all: index.tex
	$(CC) $(CFLAGS) index.tex &&\
	$(CC) $(CFLAGS) index.tex 

test:
	export ISPELL_CHARSET=UTF-8;ispell -t -d polish -p slownik.txt index.tex
