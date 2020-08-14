all: ex2 install_ex2 ex1 install_ex1

install: install_ex2 install_ex1

uninstall:
	rm $(PREFIX)/usr/bin/ex1
	rm $(PREFIX)/usr/lib/libex2.so

ex1: 
	gcc -Wall -o ex1 ex1.c -lex2

ex2: 
	gcc -c -Werror -Wall -fpic ex2.c
	gcc -shared -o libex2.so ex2.o

install_ex1: 
	cp ex1 $(PREFIX)/usr/bin/

install_ex2: 
	cp libex2.so $(PREFIX)/usr/lib/

run:
	./ex1

clean:
	rm -f *.so ex1

